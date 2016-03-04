//
//  MyTableViewCell.m
//  XYZCornerRadius
//
//  Created by iMac on 16/3/4.
//  Copyright (c) 2016年 iMac. All rights reserved.
//

#import "MyTableViewCell.h"
#import "UIView+XYZCornerRadius.h"
#import "UIImageView+XYZCornerRadius.h"

@implementation MyTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        UIView *view1 = [[UIView alloc] init];
        view1.frame = CGRectMake(20, 10, 200, 30);
        [self.contentView addSubview:view1];
        [view1 xyz_addCornerRadius:15 backgroundColor:[UIColor orangeColor]];
        
        UIView *view2 = [[UIView alloc] init];
        view2.frame = CGRectMake(20, 50, 200, 30);
        view2.backgroundColor = [UIColor orangeColor];
        [self.contentView addSubview:view2];
        view2.layer.cornerRadius = 15;
        
        UIImageView *iv = [[UIImageView alloc] initWithFrame:CGRectMake(230, 30, 64, 64)];
        iv.image = [UIImage imageNamed:@"test"];
        iv.layer.cornerRadius = 32;
        iv.layer.masksToBounds = YES;
        [self.contentView addSubview:iv];
        
        UIImageView *iv2 = [[UIImageView alloc] initWithFrame:CGRectMake(300, 30, 64, 64)];
        iv2.image = [UIImage imageNamed:@"test"];
        [iv2 xyz_addCornerRadius:32];
        [self.contentView addSubview:iv2];
        
    }
    return self;
}

@end
