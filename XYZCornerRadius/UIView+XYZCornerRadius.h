//
//  UIView+XYZCornerRadius.h
//  XYZCornerRadius
//
//  Created by iMac on 16/3/4.
//  Copyright (c) 2016年 iMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (XYZCornerRadius)

- (void)xyz_addCornerRadius:(CGFloat)radius backgroundColor:(UIColor *)bgColor;
    
- (void)xyz_addCornerRadius:(CGFloat)radius backgroundColor:(UIColor *)bgColor borderWidth:(CGFloat) borderWidth borderColor:(UIColor *) borderColor;

@end
