//
//  ViewController.m
//  makeRadiusCorner
//
//  Created by 哇咔咔 on 2016/10/30.
//  Copyright © 2016年 itcast.com.cn. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+Extension.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSTimeInterval start = CACurrentMediaTime();
    
    UIImageView *imageV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"avatar"]];
    imageV.frame = CGRectMake(0, 0, 200, 200);
    imageV.center = self.view.center;
    
//    imageV.layer.cornerRadius = 100;
//    imageV.layer.masksToBounds = YES;
//    imageV.backgroundColor = [UIColor redColor];

    [imageV radiusCornerImageWithSize:imageV.frame.size fillcolor:self.view.backgroundColor completion:^(UIImage *image) {
        imageV.image = image;
        [self.view addSubview:imageV];
    }];
    
    
    NSLog(@"普通：%lf",CACurrentMediaTime() - start);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
