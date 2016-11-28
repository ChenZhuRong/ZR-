//
//  ZRBaseViewController.m
//  ZRShop电商
//
//  Created by ChenZhuRong on 2016/11/27.
//  Copyright © 2016年 czr. All rights reserved.
//

#import "ZRBaseViewController.h"

@interface ZRBaseViewController ()
@end

@implementation ZRBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}
-(void)setLeftButton:(UIButton *)leftButton{
    _leftButton = leftButton;
    leftButton.frame = CGRectMake(5, 5, 60, self.navigationController.navigationBar.bounds.size.height-10);
    leftButton.backgroundColor=[UIColor blueColor];
    [self.navigationController.navigationBar addSubview:leftButton];
}
-(void)setRightButton:(UIButton *)rightButton{
    _rightButton = rightButton;
    rightButton.frame=CGRectMake(self.navigationController.navigationBar.bounds.size.width-65, 5, 60, self.navigationController.navigationBar.bounds.size.height-10);
    rightButton.backgroundColor=[UIColor blueColor];
    [self.navigationController.navigationBar addSubview:rightButton];
}
-(void)setCenterTitleView:(UIView *)centerTitleView{
    _centerTitleView = centerTitleView;
    centerTitleView.backgroundColor=[UIColor brownColor];
    _centerTitleView.frame =CGRectMake(CGRectGetMaxX(self.leftButton.frame)+10, 5, self.navigationController.navigationBar.bounds.size.width-2*(self.leftButton.bounds.size.width+15), self.leftButton.bounds.size.height);
    [self.navigationController.navigationBar addSubview:centerTitleView];
}


-(void)requestData{
   
    
}

@end
