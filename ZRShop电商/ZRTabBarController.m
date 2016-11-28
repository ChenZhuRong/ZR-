//
//  ZRTabBarController.m
//  ZRShop电商
//
//  Created by ChenZhuRong on 2016/11/27.
//  Copyright © 2016年 czr. All rights reserved.
//

#import "ZRTabBarController.h"
@interface ZRTabBarController ()
@property(nonatomic,strong)NSMutableArray * navViewContrllers;
@end

@implementation ZRTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
-(instancetype)initWithRootTabBarViewController:( NSArray
                                           <NSString*>*)rootViewControllers title:(NSArray<NSString*>*)titles image:(NSArray<NSString*>*)images selectedImage:(NSArray<NSString*>*)selectedImages{
    
    self.navViewContrllers =[[NSMutableArray alloc]init];
   
    for (int i=0; i < rootViewControllers.count; i++)
    {
    Class one  =NSClassFromString(rootViewControllers[i]);
    ZRBaseViewController * Vc =[(ZRBaseViewController*)[one alloc]init];
    ZRNavigationController * Nav1 =[[ZRNavigationController alloc]initWithRootViewController:Vc];
    Nav1.tabBarItem = [[UITabBarItem alloc]initWithTitle:titles[i] image:[UIImage imageNamed:images[i]] selectedImage:[UIImage imageNamed:selectedImages[i]]];
    Nav1.tabBarItem.tag = i;
    [self.navViewContrllers addObject:Nav1];
        if (i==0){
            self.oneView =Vc;
        }else if (i==1){
            self.twoView =Vc;
        }else if (i==2){
            self.twoView =Vc;
        }else if (i==3) {
            self.fourView =Vc;
        }else if (i==4){
            self.fiveView =Vc;
        }

    }
    self.viewControllers=self.navViewContrllers;
    return self;
}

-(void)setCenterButton:(UIButton *)centerButton{
        _centerButton =centerButton;
    
    centerButton.frame= CGRectMake((self.tabBar.bounds.size.width-65)/2, 0, 65, self.tabBar.bounds.size.height);
    [self.tabBar addSubview:centerButton];
    
   
}
#pragma mark - delegate
- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item{
    
    switch (item.tag) {
        case 0:
            [self.oneView requestData];
            break;
        case 1:
            [self.twoView requestData];
            break;
        case 2:
            [self.thrView requestData];
            break;
        case 3:
            [self.fourView requestData];
            break;
        case 4:
            [self.fiveView requestData];
            break;
        default:
            break;
    }
    
}
@end
