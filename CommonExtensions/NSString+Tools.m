//
//  NSString+Tools.m
//  TrafficPaiker
//
//  Created by CaiZetong on 16/6/12.
//  Copyright © 2016年 Moekee. All rights reserved.
//

#import "NSString+Tools.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (Tools)

- (BOOL)isEmpty {
    if ([self length]) {
        return YES;
    } else {
        return NO;
    }
}

- (NSString *)encodeBase64String
{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    NSString *base64Encoded = [data base64EncodedStringWithOptions:0];
    return base64Encoded;
}

- (NSString *)decodeBase64String
{
    NSData *dataFromBase64String = [[NSData alloc]
                                      initWithBase64EncodedString:self options:0];
    NSString *base64Decoded = [[NSString alloc]
                               initWithData:dataFromBase64String encoding:NSUTF8StringEncoding];
    return base64Decoded;
}

#pragma mark - 获取当前app版本
+ (NSString *)appVersion
{
    // app版本
    NSString *app_Version = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    return app_Version;
}

/** 获取文本的尺寸 */
- (CGSize)sizeWithTextFont:(UIFont *)font maxSize:(CGSize)maxSize
{
    NSDictionary *attrs = @{NSFontAttributeName : font};
    return [self boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
}

+ (BOOL)isVersion:(NSString *)oldVersion lessthan:(NSString *)newVersion
{
    BOOL result = [oldVersion compare:newVersion options:NSNumericSearch] == NSOrderedAscending;
    return result;
}


/** MD5加密 */
- (NSString *)md5
{
    const char*cStr =[self UTF8String];
    unsigned char result[16];
    CC_MD5(cStr, (CC_LONG)strlen(cStr), result);
    return[NSString stringWithFormat:
           @"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
           result[0], result[1], result[2], result[3],
           result[4], result[5], result[6], result[7],
           result[8], result[9], result[10], result[11],
           result[12], result[13], result[14], result[15]
           ];
}

//13位转10位方法（其实除以1000即可）
+ (NSString *)timeWithTimeIntervalString:(NSString *)timeString
{
    // 格式化时间
    NSDateFormatter* formatter = [[NSDateFormatter alloc] init];
    formatter.timeZone = [NSTimeZone timeZoneWithName:@"China/Beijing"];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm"];
    
    // 毫秒值转化为秒
    NSDate* date = [NSDate dateWithTimeIntervalSince1970:[timeString doubleValue]];
    NSString* dateString = [formatter stringFromDate:date];
    return dateString;
}

- (unsigned long long)fileSize
{
    unsigned long long size = 0;
    
    NSFileManager *mgr = [NSFileManager defaultManager];
    BOOL isDirectory = NO;
    
    BOOL isExist = [mgr fileExistsAtPath:self isDirectory:&isDirectory];
    
    if(!isExist) return size;
    
    if (isExist) {
        NSDirectoryEnumerator *enumerator = [mgr enumeratorAtPath:self];
        for (NSString *subPath in enumerator) {
            
            NSString *fullPath = [self stringByAppendingPathComponent:subPath];
            
            size +=[mgr attributesOfItemAtPath:fullPath error:nil].fileSize;
            
        }
    }else
    {
        size = [mgr attributesOfItemAtPath:self error:nil].fileSize;
    }
    
    return size;
}


@end
