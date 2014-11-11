//
//  DHMenuPagerView.m
//  DHMenuViewPager
//
//  Created by 胡大函 on 14/11/11.
//  Copyright (c) 2014年 HuDahan_payMoreGainMore. All rights reserved.
//

#import "DHMenuPagerView.h"

#define kMenuViewHeight 30

@implementation DHMenuPagerView {
  NSArray *titleArray;
  DHLandscapeMenuScrollView *menuView;
  DHLandscapeTableView *contentView;
}

- (instancetype)initWithFrame:(CGRect)frame controllers:(NSArray *)controllers titles:(NSArray *)titles {
  if (self = [super initWithFrame:frame]) {
    if (titles) {
      titleArray = titles;
      menuView = [[DHLandscapeMenuScrollView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, kMenuViewHeight) Titles:titles shouldShowIndicatorView:YES];
      menuView.clickDelegate = self;
      [self addSubview:menuView];
      contentView = [[DHLandscapeTableView alloc] initWithFrame:CGRectMake(0, kMenuViewHeight, self.frame.size.width, self.frame.size.height - kMenuViewHeight) viewArray:controllers];
      [self addSubview:contentView];
    } else {
      contentView = [[DHLandscapeTableView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height) viewArray:controllers];
      [self addSubview:contentView];
    }
    contentView.swipDelegate = self;
  }
  return self;
}

- (void)menuSelectedBtnIndex:(NSUInteger)tag {
  [contentView.tableView scrollToRowAtIndexPath:[NSIndexPath indexPathForRow:tag inSection:0] atScrollPosition:UITableViewScrollPositionNone animated:YES];
}

- (void)contentViewChangedIndex:(NSUInteger)tag {
  [menuView selectBtnWithTag:tag];
}

- (void)contentViewChangedAtIndex:(NSUInteger)tag offset:(CGPoint)offset {
  [menuView changeIndicatorViewWithPage:tag offset:offset.y];
}

@end
