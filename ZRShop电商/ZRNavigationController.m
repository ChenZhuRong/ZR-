//
//  ZRNavigationController.m
//  ZRShop电商
//
//  Created by ChenZhuRong on 2016/11/27.
//  Copyright © 2016年 czr. All rights reserved.
//

#import "ZRNavigationController.h"
@interface ZRNavigationController ()

@end

@implementation ZRNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];    
}

-(void)setImageName:(UIImage *)imageName{
    _imageName = imageName;
    [self.navigationBar setBackgroundImage:imageName forBarMetrics:UIBarMetricsDefault];
}

-(void)setFont:(UIFont *)font{
    _font = font;
    NSMutableDictionary * attributes =[NSMutableDictionary dictionary];
    attributes[NSFontAttributeName]= font;
    [self.navigationBar setTitleTextAttributes:attributes];

}

-(void)setColor:(UIColor *)color{
    _color = color;
    NSMutableDictionary * attributes =[NSMutableDictionary dictionary];
    attributes[NSForegroundColorAttributeName] = color;
    [self.navigationBar setTitleTextAttributes:attributes];
}

@end
