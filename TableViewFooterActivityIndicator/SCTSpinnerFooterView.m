//
//  SCTSpinnerFooterView.m
//  TableViewFooterActivityIndicator
//
//  Created by Shou Cheng Tuan on 2015/7/16.
//  Copyright (c) 2015年 Shou Cheng Tuan. All rights reserved.
//

#import "SCTSpinnerFooterView.h"
@interface SCTSpinnerFooterView ()

@property (nonatomic, strong) UIActivityIndicatorView *spinner;

@end

@implementation SCTSpinnerFooterView

#pragma mark - Public methods

+ (instancetype)createFooterSpinner
{
    CGSize screenSize = [UIScreen mainScreen].bounds.size;
    CGRect frame = CGRectMake(0, 0, screenSize.width, screenSize.height*0.15);
    return [[super alloc] initFooterView:frame];
}

/**
 * Customize footer view frame, spinner and the frame of spinner.
 */
+ (instancetype)createFooterView:(CGRect)frame activityIndicator:(UIActivityIndicatorView *)spinner withFrame:(CGRect)spinnerFrame
{
    return [[super alloc] initFooterView:frame activityIndicator:spinner withFrame:spinnerFrame];
}
/**
 * Customize footer view frame and spinner. Spinner will be set at the center-top of footer view.
 */
+ (instancetype)createFooterView:(CGRect)frame activityIndicator:(UIActivityIndicatorView *)spinner
{
    return [[super alloc] initFooterView:frame activityIndicator:spinner];
}
/**
 * Customize footer view frame. It will use default spinner and spinner will be set at the center-top of footer view.
 */
+ (instancetype)createFooterView:(CGRect)frame
{
    return [[super alloc] initFooterView:frame];
}

#pragma mark - Init methods
- (instancetype)initFooterView:(CGRect)frame activityIndicator:(UIActivityIndicatorView *)spinner withFrame:(CGRect)spinnerFrame
{
    if (self = [self init]) {
        self.frame = frame;
        spinner.frame = spinnerFrame;
        spinner.hidesWhenStopped = YES;
        
        [self addSubview:spinner];
        self.spinner = spinner;
    }
    
    return self;
}


- (id)initFooterView:(CGRect)frame activityIndicator:(UIActivityIndicatorView *)spinner
{
    CGSize screenSize = [UIScreen mainScreen].bounds.size;

    self = [self initFooterView:frame activityIndicator:spinner withFrame:CGRectMake(screenSize.width*0.5f-20, 5, 20, 20)];
    return self;
}


- (id)initFooterView:(CGRect)frame
{
    self = [self initFooterView:frame activityIndicator:[self getDefaultSpinner]];
    
    return self;
}


#pragma mark - Spinner Animating
- (void)startFooterSpinnerAnimating
{
    [_spinner startAnimating];
}

- (void)stopFooterSpinnerAnimating
{
    [_spinner stopAnimating];
}

- (BOOL)isAnimating
{
    return self.spinner.isAnimating;
}

#pragma mark - Private
- (UIActivityIndicatorView *)getDefaultSpinner
{
    CGSize screenSize = [UIScreen mainScreen].bounds.size;
    UIActivityIndicatorView *spinner = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    spinner.hidesWhenStopped = YES;
    spinner.frame = CGRectMake(screenSize.width*0.5f-20, 5, 20, 20);
    
    return spinner;
}

@end
