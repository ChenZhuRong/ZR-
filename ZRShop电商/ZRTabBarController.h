//
//  ZRTabBarController.h
//  ZRShop电商
//
//  Created by ChenZhuRong on 2016/11/27.
//  Copyright © 2016年 czr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZRNavigationController.h"
#import "ZRBaseViewController.h"

@interface ZRTabBarController : UITabBarController
@property(nonatomic,strong)ZRBaseViewController * oneView;
@property(nonatomic,strong)ZRBaseViewController * twoView;
@property(nonatomic,strong)ZRBaseViewController * thrView;
@property(nonatomic,strong)ZRBaseViewController * fourView;
@property(nonatomic,strong)ZRBaseViewController * fiveView;

@property(nonatomic,strong)UIButton * centerButton;
-(instancetype)initWithRootTabBarViewController:( NSArray
                                                 <NSString*>*)rootViewControllers title:(NSArray*)titles image:(NSArray<NSString*>*)images selectedImage:(NSArray<NSString*>*)selectedImages;
@end
