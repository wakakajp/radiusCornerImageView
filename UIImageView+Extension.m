//
//  UIImageView+Extension.m
//  makeRadiusCorner
//
//  Created by 哇咔咔 on 2016/10/30.
//  Copyright © 2016年 itcast.com.cn. All rights reserved.
//

#import "UIImageView+Extension.h"

@implementation UIImageView (Extension)


- (void)radiusCornerImageWithSize:(CGSize)size fillcolor:(UIColor *)color completion:(void(^)(UIImage *))completion {
    
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        
        UIGraphicsBeginImageContextWithOptions(size, YES, 0);
        CGRect rect = CGRectMake(0, 0, size.width, size.height);
        
        [color setFill];
        UIRectFill(rect);
        
        UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:rect];
        [path addClip];
        
        [self drawRect:rect];
        UIImage *reslut = UIGraphicsGetImageFromCurrentImageContext();
        
        UIGraphicsEndImageContext();
        
        dispatch_async(dispatch_get_main_queue(), ^{
            completion(reslut);
        });
    });
    
}

@end
