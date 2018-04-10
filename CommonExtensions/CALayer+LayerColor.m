//
//  CALayer+LayerColor.m
//  FeiHongJinFu
//
//  Created by 峰子 on 16/7/23.
//  Copyright © 2016年 CC. All rights reserved.
//

#import "CALayer+LayerColor.h"

@implementation CALayer (LayerColor)

- (void)setBorderUIColor:(UIColor *)color{
    self.borderColor = color.CGColor;
}


@end
