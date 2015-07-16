//
//  ViewController.m
//  TableViewFooterActivityIndicator
//
//  Created by Shou Cheng Tuan on 2015/7/16.
//  Copyright (c) 2015年 Shou Cheng Tuan. All rights reserved.
//

#import "ViewController.h"
#import "SCTSpinnerFooterView.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) SCTSpinnerFooterView *footerView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    CGSize screenSize = [UIScreen mainScreen].bounds.size;
    self.footerView = [SCTSpinnerFooterView createFooterView:CGRectMake(0, 0, screenSize.width, 100)];
    self.tableView.tableFooterView = self.footerView;
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [self.footerView startFooterSpinnerAnimating];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *kCellIdentidier = @"kCellIdentidier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellIdentidier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kCellIdentidier];
    }
    
    cell.textLabel.text = @"First row";
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

@end
