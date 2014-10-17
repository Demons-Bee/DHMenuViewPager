//
//  DHLandscapeMenuScrollView.h
//  DHMenuViewPager
//
//  Created by 胡大函 on 14/9/30.
//  Copyright (c) 2014年 HuDahan_payMoreGainMore. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MenuViewDelegate <NSObject>

- (void)menuSelectedBtnIndex:(NSUInteger)tag;
- (void)contentViewChangedIndex:(NSUInteger)tag;
- (void)contentViewChangedAtIndex:(NSUInteger)tag offset:(CGPoint)offset;

@end

@interface DHLandscapeMenuScrollView : UIScrollView

@property (assign, nonatomic) id<MenuViewDelegate> clickDelegate;

- (id)initWithFrame:(CGRect)frame Titles:(NSArray *)titles shouldShowIndicatorView:(BOOL)shouldShowIndicatorView;
- (void)selectBtnWithTag:(NSUInteger)tag;
- (void)changeIndicatorViewWithPage:(CGFloat)page offset:(CGFloat)x;

@end
