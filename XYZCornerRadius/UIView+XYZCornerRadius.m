//
//  UIView+XYZCornerRadius.m
//  XYZCornerRadius
//
//  Created by iMac on 16/3/4.
//  Copyright (c) 2016年 iMac. All rights reserved.
//

#import "UIView+XYZCornerRadius.h"

@implementation UIView (XYZCornerRadius)

- (void)xyz_addCornerRadius:(CGFloat)radius backgroundColor:(UIColor *)bgColor {
   
    UIImage *img = [self xyz_drawRectWithRoundedCorner:radius borderWidth:0.5 borderColor:[UIColor clearColor] backgroundColor:bgColor];
    UIImageView *iv = [[UIImageView alloc] initWithImage:img];
    [self insertSubview:iv atIndex:0];
}

- (void)xyz_addCornerRadius:(CGFloat)radius backgroundColor:(UIColor *)bgColor borderWidth:(CGFloat) borderWidth borderColor:(UIColor *) borderColor {
    
    UIImage *img = [self xyz_drawRectWithRoundedCorner:radius borderWidth:borderWidth borderColor:borderColor backgroundColor:bgColor];
    UIImageView *iv = [[UIImageView alloc] initWithImage:img];
    [self insertSubview:iv atIndex:0];
}

- (UIImage *) xyz_drawRectWithRoundedCorner:(CGFloat) radius borderWidth:(CGFloat) borderWidth borderColor:(UIColor *) borderColor backgroundColor:(UIColor *) bgColor {
    
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, NO, [UIScreen mainScreen].scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetLineWidth(context, borderWidth);
    CGContextSetStrokeColorWithColor(context, borderColor.CGColor);
    CGContextSetFillColorWithColor(context, bgColor.CGColor);
    
    CGFloat width = self.bounds.size.width;
    CGFloat height = self.bounds.size.height;
    CGFloat halfBorderWidth = borderWidth / 2.0;

    CGContextMoveToPoint(context, width - halfBorderWidth, radius + halfBorderWidth);  // 开始坐标右边开始
    CGContextAddArcToPoint(context, width - halfBorderWidth, height - halfBorderWidth, width - radius - halfBorderWidth, height - halfBorderWidth, radius);  // 右下角角度
    CGContextAddArcToPoint(context, halfBorderWidth, height - halfBorderWidth, halfBorderWidth, height - radius - halfBorderWidth, radius); // 左下角角度
    CGContextAddArcToPoint(context, halfBorderWidth, halfBorderWidth, width - halfBorderWidth, halfBorderWidth, radius); // 左上角
    CGContextAddArcToPoint(context, width - halfBorderWidth, halfBorderWidth, width - halfBorderWidth, radius + halfBorderWidth, radius); // 右上角
    
    CGContextDrawPath(context, kCGPathFillStroke);
    
    UIImage *outputImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
   
    return outputImage;
}

@end
