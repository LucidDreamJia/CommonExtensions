//
//  UIButton+Common.h
//  shuaidanbao
//
//  Created by apple on 16/1/6.
//  Copyright © 2016年 sdb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extension)

/**
 *  压缩上传图片到指定字节
 *
 *  @param image     压缩的图片
 *  @param maxLength 压缩后最大字节大小
 *
 *  @return 压缩后图片的二进制
 */
+ (NSData *) compressImage:(UIImage *)image toMaxLength:(NSInteger) maxLength;

/**
 *  获得指定size的图片
 *
 *  @param image   原始图片
 *  @param newSize 指定的size
 *
 *  @return 调整后的图片
 */
+ (UIImage *) resizeImage:(UIImage *) image withNewSize:(CGSize) newSize;

/**
 *  通过指定图片最长边，获得等比例的图片size
 *
 *  @param image       原始图片
 *  @param imageLength 图片允许的最长宽度（高度）
 *
 *  @return 获得等比例的size
 */
+ (CGSize) scaleImage:(UIImage *) image withLength:(CGFloat) imageLength;


/**
 对指定图片进行拉伸

 @param name 图片名
 @return 拉伸的图片
 */
+ (UIImage*)resizableImage:(NSString *)name;

/**
 压缩图片至100k以下

 @param image 压缩的图片
 @return 压缩后的data
 */
+(NSData *)imageData:(UIImage *)image;


/**
 压图片质量

 @param image 压缩的图片
 @return 压缩后的data
 */
+ (NSData *)zipImageWithImage:(UIImage *)image;

/**
 颜色转换为背景图片

 @param color 颜色
 @return 返回生成的图片
 */
+ (UIImage *)imageWithColor:(UIColor *)color;


/**
 把图片裁剪为圆形

 @param image 需要裁剪的图片
 @param borderWidth 边框的宽度
 @param color 边框的颜色
 @return 返回一个裁剪的图片
 */

+ (UIImage *)imageWithClipImage:(UIImage *)image borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)color;


/**
 把图片裁剪为正方形

 @param image 需要裁剪的图片
 @param borderWidth 边框的宽度
 @param color 边框的颜色
 @return 返回一个裁剪的图片
 */
+ (UIImage *)imageWithClipSquareImage:(UIImage *)image borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)color;

/**
 在图片上绘制文字

 @param text 绘制的文字
 @param textFont 绘制的文字字体
 @param textColor 绘制的文字颜色
 @param image 图片
 @return 返回绘制文字的图片
 */
+ (UIImage *)drawText:(NSString *)text textFont:(CGFloat)textFont textColor:(UIColor *)textColor forImageName:(NSString *)imageName;


@end
