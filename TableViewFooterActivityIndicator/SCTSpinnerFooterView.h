//
//  SCTSpinnerFooterView.h
//  TableViewFooterActivityIndicator
//
//  Created by Shou Cheng Tuan on 2015/7/16.
//  Copyright (c) 2015年 Shou Cheng Tuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SCTSpinnerFooterView : UIView


+ (instancetype)createFooterView:(CGRect)frame activityIndicator:(UIActivityIndicatorView *)spinner withFrame:(CGRect)spinnerFrame;
+ (instancetype)createFooterView:(CGRect)frame activityIndicator:(UIActivityIndicatorView *)spinner;
+ (instancetype)createFooterView:(CGRect)frame;

- (void)startFooterSpinnerAnimating;
- (void)stopFooterSpinnerAnimating;

@property (nonatomic, getter=isFooterSpinnerAnimating) BOOL footerSpinnerAnimating;

@end
