//
//  MacroTools.h
//  GSEngineeringBaseFramework
//
//  Created by 关宇琼 on 16/5/5.
//  Copyright © 2016年 GuanSir. All rights reserved.
//

#ifndef MacroTools_h
#define MacroTools_h


#import "AppDelegate.h"
#import "GSUserInfoModel.h"



/*
 *  设备型号
 */
#define IS_IPHONE ( [[[UIDevice currentDevice] model] isEqualToString:@"iPhone"] )
#define IS_IPOD   ( [[[UIDevice currentDevice ] model] isEqualToString:@"iPod touch"] )
#define IS_IPAD   ( [[[UIDevice currentDevice ] model] isEqualToString:@"iPad"] )
#define IS_HEIGHT_GTE_568 [[UIScreen mainScreen ] bounds].size.height >= 568.0f
#define IS_IPHONE_5 ( IS_IPHONE && IS_HEIGHT_GTE_568 )

#define IPHONE4 															\
([UIScreen instancesRespondToSelector:@selector(currentMode)] ?             \
CGSizeEqualToSize(CGSizeMake(640, 960),                                     \
[[UIScreen mainScreen] currentMode].size) : NO)                             \

#define IPHONE5 															\
([UIScreen instancesRespondToSelector:@selector(currentMode)] ?             \
CGSizeEqualToSize(CGSizeMake(640, 1136),                                    \
[[UIScreen mainScreen] currentMode].size) : NO)                             \

#define IPHONE6 															\
([UIScreen instancesRespondToSelector:@selector(currentMode)] ?             \
CGSizeEqualToSize(CGSizeMake(750, 1334),                                    \
[[UIScreen mainScreen] currentMode].size) : NO)                             \

#define IPHONE6PLUS															\
([UIScreen instancesRespondToSelector:@selector(currentMode)] ?             \
CGSizeEqualToSize(CGSizeMake(1080, 1920),                                   \
[[UIScreen mainScreen] currentMode].size) : NO)                             \


/*
 *  IOS 版本
 */
#define IOS7  [[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0f
#define IOS8  [[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0f


/*
 *  __week 避免循环引用
 */
#define gs_WS(weakSelf)  __weak __typeof(&*self)weakSelf = self
/*
 *  通知中心
 */
#define gs_NotiCenter [NSNotificationCenter defaultCenter]

/*
 *  tabBar 单利
 */

#define gs_ShareTabBarController [GSBaseTabBarController sharedGSBaseTabBarController]

/*
 *  登录 单利
 */

#define gs_LonginViewController [GSLoginViewController sharedGSLoginViewController]
/*
 *  NSUserdefault
 */

#define gs_NSUserDefaults [NSUserDefaults standardUserDefaults]

/*
 *  获得工程的appdelegate单例
 */
#define gs_ApplicationDelegate ((AppDelegate *)[[UIApplication sharedApplication] delegate])

/*
 * 文件、目录
 */
#define gs_DocumentBasePath ((NSString *)[(NSArray *)NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)  objectAtIndex:0])
#define gs_FileManager [NSFileManager defaultManager]

/*
 *  使用图片名获得图片，适用于中小图（tableview等）
 *  这个方法会将图片内存放在cache里，如果调用大图过多会导致内存占用过多
 */
#define gs_LoadNormalImage(file) [UIImage imageNamed:file]


/*
 *  获得工程的appdelegate单例
 */
#define ApplicationDelegate ((AppDelegate *)[[UIApplication sharedApplication] delegate])

/*
 *  获得工程的字号单例
 */
#define gs_FontInfo [FontInfo sharedFontInfo]


/**
 * 简单打印调试信息
 */
#define DEBUG_SWITCH        1
#ifdef    DEBUG_SWITCH
#define DebugLog(fmt,args...) NSLog(fmt,##args)
#else
#define DebugLog(fmt,args...)
#endif

/**
 * 错误信息打印
 * 自动打印发生错误时代码所在的位置
 */
#define     ERR_DEBUG_SWITCH        1
#ifdef    ERR_DEBUG_SWITCH
#define ErrLog(fmt,args...) NSLog(@"\n--File:<%s> \n--Fun:[%s] \n--Line:%d",fmt, __FILE__, __FUNCTION__, __LINE__, ##args)
#else
#define ErrLog(fmt,args...)
#endif





#endif /* MacroTools_h */
