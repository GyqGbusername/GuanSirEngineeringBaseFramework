//
//  GSBaseViewController.h
//  GSEngineeringBaseFramework
//
//  Created by 关宇琼 on 16/5/6.
//  Copyright © 2016年 GuanSir. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GSBaseViewController : UIViewController

@property (nonatomic, strong) NSDictionary *userInfo;

/**
 *  返回上一页
 */
- (void)backAction;

/**
 *  返回跟视图
 */
- (void)backRootVCAction;

/**
 *  页面布局
 */
- (void)initUI;

/**
 *  数据加载
 */
- (void)dataHandle;

@end
