//
//  ZRBaseViewController.h
//  ZRShop电商
//
//  Created by ChenZhuRong on 2016/11/27.
//  Copyright © 2016年 czr. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ZRBaseViewControllerdDelegate <NSObject>

@end

@interface ZRBaseViewController : UIViewController

@property(nonatomic,strong)UIButton * rightButton;
@property(nonatomic,strong)UIButton * leftButton;
@property(nonatomic,strong)UIView   * centerTitleView;
@property(nonatomic,assign)id<ZRBaseViewControllerdDelegate>delegate;
-(void)requestData;
@end
