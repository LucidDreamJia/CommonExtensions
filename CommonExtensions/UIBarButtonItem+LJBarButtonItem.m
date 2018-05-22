//
//  UIBarButtonItem+LJBarButtonItem.m
//  FeiHongJinFu
//
//  Created by 峰子 on 16/7/27.
//  Copyright © 2016年 Moekee. All rights reserved.
//

#import "UIBarButtonItem+LJBarButtonItem.h"
#import "UIView+Utils.h"

@implementation UIBarButtonItem (LJBarButtonItem)
+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    button.frame = CGRectMake(- 10, 0, button.currentBackgroundImage.size.width, button.currentBackgroundImage.size.height);
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[self alloc] initWithCustomView:button];
}

+ (instancetype)itemWithImage:(NSString *)image selectImage:(NSString *)selectImage target:(id)target action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:selectImage] forState:UIControlStateSelected];
    button.frame = CGRectMake(- 10, 0, button.currentBackgroundImage.size.width, button.currentBackgroundImage.size.height);
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[self alloc] initWithCustomView:button];
}


+ (instancetype)leftBarButtonItemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action {
    //返回按钮
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    button.size = CGSizeMake(60, 60);
    // 让按钮内部的所有内容左对齐
    button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    //[button sizeToFit];
    // 让按钮的内容往左边偏移
    button.contentEdgeInsets = UIEdgeInsetsMake(0, -5, 0, 0);
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[self alloc] initWithCustomView:button];
}

+ (instancetype)itemWithTitle:(NSString *)title titleColor:(UIColor *)titleColor disableColor:(UIColor *)disableColor target:(id)target action:(SEL)action {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    // 让按钮内部的所有内容右对齐
    button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    //button.frame = CGRectMake(0, 0, 50, 50);
    [button sizeToFit];
    // 让按钮的内容往左边偏移
    button.contentEdgeInsets = UIEdgeInsetsMake(0, 0, 0, -5);
    
    button.titleLabel.font = [UIFont systemFontOfSize:16];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    [button setTitleColor:disableColor forState:UIControlStateDisabled];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[self alloc] initWithCustomView:button];
}

@end
