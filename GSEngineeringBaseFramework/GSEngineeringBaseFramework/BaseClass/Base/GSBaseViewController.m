//
//  GSBaseViewController.m
//  GSEngineeringBaseFramework
//
//  Created by 关宇琼 on 16/5/6.
//  Copyright © 2016年 GuanSir. All rights reserved.
//

#import "GSBaseViewController.h"

@implementation GSBaseViewController





- (void)viewDidLoad
{
    [super viewDidLoad];
    [self dataHandle];
    [self initUI];
    //设置HUD的样式
  
}

- (void)viewWillDisappear:(BOOL)animated {
    //[SVProgressHUD dismiss];
    [super viewWillDisappear:animated];
}

#pragma mark - 私有方法



#pragma mark - 公共方法
/**
 *  返回上一页
 */
- (void)backAction {
    [self.navigationController popViewControllerAnimated:YES];
}

/**
 *  返回跟视图
 */
- (void)backRootVCAction {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

/**
 *  页面布局
 */

- (void)initUI {
    self.view.backgroundColor = gs_Color_Back;
}

/**
 *  数据加载
 */

- (void)dataHandle {
    
}




@end
