//
//  UIView+Utils.h
//  MyCode
//
//  Created by 峰子 on 16/6/28.
//  Copyright © 2016年 峰子. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Utils)
@property (nonatomic,assign) CGFloat x;
@property (nonatomic,assign) CGFloat y;
@property (nonatomic,assign) CGFloat width;
@property (nonatomic ,assign) CGFloat height;
@property (nonatomic,assign) CGFloat centerX;
@property (nonatomic,assign) CGFloat centerY;
@property (nonatomic, assign) CGSize size;
@property (nonatomic,assign) CGPoint orign;

@property (nonatomic, assign) CGFloat left, right, top, bottom;
@property (nonatomic, readonly) CGPoint boundsCenter;

/** 加载对应的xib */
+ (instancetype)loadCorrespondingViewFromXib;



@end
