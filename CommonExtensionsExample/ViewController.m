//
//  ViewController.m
//  CommonExtensionsExample
//
//  Created by mac on 2018/4/9.
//  Copyright © 2018年 ZhuoYue. All rights reserved.
//

#import "ViewController.h"
#import "CommonExtensionsHeader.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImage *image = [UIImage drawText:@"90%" textFont:9 textColor:[UIColor whiteColor] forImageName:@"sliderImage"];
    [self.slider setThumbImage:image forState:UIControlStateNormal];
    
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithTitle:@"测试" titleColor:[UIColor redColor] disableColor:nil target:self action:nil];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
