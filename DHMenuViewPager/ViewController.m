//
//  ViewController.m
//  DHMenuViewPager
//
//  Created by 胡大函 on 14/9/29.
//  Copyright (c) 2014年 HuDahan_payMoreGainMore. All rights reserved.
//

#import "ViewController.h"
#import "DHLandscapeTableView.h"
@interface ViewController ()

@end

@implementation ViewController
#define RGBCOLOR(r,g,b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1]
- (void)viewDidLoad {
    [super viewDidLoad];
    int r = rand() % 255;
    int b = rand() % 255;
    self.view.backgroundColor = [UIColor lightGrayColor];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 200, self.view.frame.size.width, 50)];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = self.labelTitle;
    label.backgroundColor = RGBCOLOR(r,255, b);
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
