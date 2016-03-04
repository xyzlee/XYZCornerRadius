//
//  ViewController.m
//  XYZCornerRadius
//
//  Created by iMac on 16/3/4.
//  Copyright (c) 2016年 iMac. All rights reserved.
//
// 参考博客 http://www.cocoachina.com/ios/20160301/15486.html

#import "ViewController.h"
#import "MyTableViewCell.h"

@interface ViewController ()<UITableViewDataSource>

@property (nonatomic, strong) UITableView *myTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myTableView = [[UITableView alloc] initWithFrame: [UIScreen mainScreen].bounds style:UITableViewStylePlain];
    [self.view addSubview:self.myTableView];
    
    self.myTableView.dataSource = self;
    self.myTableView.rowHeight = 100;
    NSLog(@".............");
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 2000;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"MyTableViewCell";
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[MyTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    NSLog(@".................");
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
