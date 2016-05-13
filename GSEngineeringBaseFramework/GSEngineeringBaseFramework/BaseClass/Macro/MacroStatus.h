//
//  MacroStatus.h
//  GSEngineeringBaseFramework
//
//  Created by 关宇琼 on 16/5/5.
//  Copyright © 2016年 GuanSir. All rights reserved.
//

#ifndef MacroStatus_h
#define MacroStatus_h


/*
 *常用网络状态
 */
#define gs_Status_Load                @"加载中..."
#define gs_Status_Publish             @"发布中..."
#define gs_Status_Praise              @"点赞中..."
#define gs_Status_Register            @"注册中..."
#define gs_Status_Login               @"登录中..."
#define gs_Status_VerifyCode          @"验证中..."
#define gs_Status_GetVerifyCode       @"验证码发送中..."
#define gs_Status_UpLoad              @"图片上传中,请耐心等待."
#define gs_Status_Advice              @"意见提交中..."
#define gs_Status_SubmitOrder         @"订单提交中..."
#define gs_Status_Upload              @"上传中..."
#define gs_Status_Delete              @"删除中..."
#define gs_Status_Verity              @"验证中..."

/**
 *完成类型
 */
#define gs_Success_Load               @"加载完成"
#define gs_Success_Login               @"登录成功"

/*
 *错误类型
 */
#define gs_Error_Network              @"网络不给力"
#define gs_Error_DataError            @"数据异常"
#define gs_Error_WebViewError         @"加载失败"
#define gs_Error_Unknown              @"未知的错误"
#define gs_Error_Service              @"验证失败请联系客户"
#define gs_Error_Publish              @"发布失败"
#define gs_Error_TelHasJoin           @"该手机号已经注册"
#define gs_Error_PasswordNotSame      @"密码输入不一致"
#define gs_Error_login                @"用户名或密码错误"
#define gs_Error_LoginOverTime        @"账号登录过期,请重新登录"
#define gs_Error_Advice               @"意见提交失败"
#define gs_Error_Emoji                @"请不要输入表情"
#define gs_Error_Address              @"请选择所在地区"
#define gs_Error_AddressDetail        @"请输入详细信息"
#define gs_Error_VerifyCode           @"验证码错误"





/**
 *格式错误
 */
#define gs_FormatError_Username       @"用户名格式错误"
#define gs_FormatError_Name           @"姓名格式错误"
#define gs_FormatError_VerifyCode     @"验证码格式错误"
#define gs_FormatError_Tel            @"手机号格式错误"
#define gs_FormatError_Password       @"密码格式错误"
#define gs_FormatError_PasswordSubmit @"确认密码格式错误"
#define gs_FormatError_NickName       @"昵称格式不正确"
#define gs_FormatError_Consignee      @"收货人格式错误"





#endif /* MacroStatus_h */
