//
//  MacroURL.h
//  GSEngineeringBaseFramework
//
//  Created by 关宇琼 on 16/5/5.
//  Copyright © 2016年 GuanSir. All rights reserved.
//

#ifndef MacroURL_h
#define MacroURL_h


#define gs_BaseURL @"http://115.28.133.3:9457/" //外网
//#define gs_BaseURL @""  // 内网

/**
 *                                  登录注册
 */

/***
 *     用户授权
 ***/

#define gs_url_Auth_GetCaptcha       @"auth.asmx/GetCaptcha"         // 获取验证码
#define gs_url_Auth_StoreLogin       @"auth.asmx/StoreLogin"         // 验证码登录:快速注册
#define gs_url_Auth_StoreLoginByPwd  @"auth.asmx/StoreLoginByPwd"    // 密码登录
#define gs_url_Auth_StoreUpd         @"auth.asmx/StoreUpd"           // 帐户信息修改：细化注册信息

#define gs_url_Auth_StoreByMobile    @"auth.asmx/StoreByMobile"      // 帐户信息
#define gs_url_Auth_GetBalance       @"auth.asmx/GetBalance"         // 我的钱包
#define gs_url_Auth_NewPwd           @"auth.asmx/NewPwd"             // 修改密码
#define gs_url_Auth_NewMobile        @"auth.asmx/NewMobile"          // 修改手机号





#endif /* MacroURL_h */
