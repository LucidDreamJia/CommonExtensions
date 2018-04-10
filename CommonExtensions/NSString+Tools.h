//
//  NSString+Tools.h
//  TrafficPaiker
//
//  Created by CaiZetong on 16/6/12.
//  Copyright © 2016年 Moekee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (Tools)

/** 判断字符串是否为空 */
- (BOOL)isEmpty;

/** 64编码 */
- (NSString*)encodeBase64String;

/** 64解码 */
- (NSString*)decodeBase64String;

/** 计算文字的尺寸 */
- (CGSize)sizeWithTextFont:(UIFont *)font maxSize:(CGSize)maxSize;

/** 获取当前app版本 */
+ (NSString *)appVersion;

/** 版本号比较 */
+ (BOOL)isVersion:(NSString *)oldVersion lessthan:(NSString *)newVersion;

/** md5加密 */
- (NSString *)md5;

/** 时间戳转时间 13位转10位方法（其实除以1000即可) */
+ (NSString *)timeWithTimeIntervalString:(NSString *)timeString;

/** 计算文件大小 */
- (unsigned long long)fileSize;

@end
