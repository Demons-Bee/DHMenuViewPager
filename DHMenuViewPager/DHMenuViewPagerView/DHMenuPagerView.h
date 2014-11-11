//
//  DHMenuPagerView.h
//  DHMenuViewPager
//
//  Created by 胡大函 on 14/11/11.
//  Copyright (c) 2014年 HuDahan_payMoreGainMore. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DHLandscapeTableView.h"
#import "DHLandscapeMenuScrollView.h"
@interface DHMenuPagerView : UIView <MenuViewDelegate>

- (instancetype)initWithFrame:(CGRect)frame controllers:(NSArray *)controllers titles:(NSArray *)titles;

@end
