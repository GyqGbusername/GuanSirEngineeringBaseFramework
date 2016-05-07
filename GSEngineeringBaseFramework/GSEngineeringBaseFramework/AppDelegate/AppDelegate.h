//
//  AppDelegate.h
//  GSEngineeringBaseFramework
//
//  Created by 关宇琼 on 16/5/5.
//  Copyright © 2016年 GuanSir. All rights reserved.
//

#import <UIKit/UIKit.h>
@class GSUserInfoModel;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/**
 *  网络请求单例
 */
@property (strong, nonatomic) AFHTTPSessionManager *httpManager;
/**
 *  用户信息
 */
@property (nonatomic, strong) GSUserInfoModel *userInfo;
/**
 *  是否登录的状态
 */
@property (assign, nonatomic) BOOL isLogin;





@end

