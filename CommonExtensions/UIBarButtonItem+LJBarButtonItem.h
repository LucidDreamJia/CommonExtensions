//
//  UIBarButtonItem+LJBarButtonItem.h
//  LejuManager
//
//  Created by 峰子 on 16/7/27.
//  Copyright © 2016年 Moekee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (LJBarButtonItem)

+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action;

+ (instancetype)itemWithImage:(NSString *)image selectImage:(NSString *)selectImage target:(id)target action:(SEL)action;

+ (instancetype)leftBarButtonItemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action;

+ (instancetype)itemWithTitle:(NSString *)title titleColor:(UIColor *)titleColor disableColor:(UIColor *)disableColor target:(id)target action:(SEL)action;

@end
