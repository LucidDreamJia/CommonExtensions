//
//  UITableView+Configuration.m
//  FeiHongJinFu
//
//  Created by 贾国峰 on 2017/9/20.
//  Copyright © 2017年 jiaguofeng. All rights reserved.
//  tableview的适配

#import "UITableView+Configuration.h"
#import <objc/message.h>

NS_ASSUME_NONNULL_BEGIN
@implementation UITableView (Configuration)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        //- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style
        //获取系统的方法
        Method getSystemStyle = class_getInstanceMethod(self, @selector(initWithFrame:style:));
        //获取自定义的方法
        Method getCMStyle = class_getInstanceMethod(self, @selector(cmInitWithFrame:style:));
        //交换方法
        method_exchangeImplementations(getSystemStyle, getCMStyle);
        
        
        //- (nullable instancetype)initWithCoder:(NSCoder *)aDecoder
        //获取系统的方法
        Method getSystemStyleCoder = class_getInstanceMethod(self, @selector(initWithCoder:));
        //获取自定义的方法
        Method getCMStyleCoder = class_getInstanceMethod(self, @selector(cminitWithCoder:));
        //交换方法
        method_exchangeImplementations(getSystemStyleCoder, getCMStyleCoder);
        
        
        
    });
}

- (instancetype)cmInitWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    UITableView *tableView =  [self cmInitWithFrame:frame style:style];
    if (tableView) {
        if (@available(iOS 11.0, *)) {
            tableView.estimatedRowHeight = 0;
            tableView.estimatedSectionHeaderHeight = 0;
            tableView.estimatedSectionFooterHeight = 0;
        }
    }
    return tableView;
}

- (instancetype)cminitWithCoder:(NSCoder *)aDecoder {
    UITableView *tableView =  [self cminitWithCoder:aDecoder];
    if (tableView) {
        if (@available(iOS 11.0, *)) {
            tableView.estimatedRowHeight = 0;
            tableView.estimatedSectionHeaderHeight = 0;
            tableView.estimatedSectionFooterHeight = 0;
        }
    }
    return tableView;
}


@end
NS_ASSUME_NONNULL_END
