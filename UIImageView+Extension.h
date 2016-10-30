//
//  UIImageView+Extension.h
//  makeRadiusCorner
//
//  Created by 哇咔咔 on 2016/10/30.
//  Copyright © 2016年 itcast.com.cn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (Extension)

- (void)radiusCornerImageWithSize:(CGSize)size fillcolor:(UIColor *)color completion:(void(^)(UIImage *))completion;

@end
