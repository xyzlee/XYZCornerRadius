//
//  UIImageView+XYZCornerRadius.m
//  XYZCornerRadius
//
//  Created by iMac on 16/3/4.
//  Copyright (c) 2016年 iMac. All rights reserved.
//

#import "UIImageView+XYZCornerRadius.h"
#import "UIImage+ImageRoundedCorner.h"

@implementation UIImageView (XYZCornerRadius)

- (void)xyz_addCornerRadius:(CGFloat)radius {
    if (self.image) {
        self.image = [self.image imageAddCornerWithRadius:radius andSize:self.bounds.size];
        
    }
}

@end
