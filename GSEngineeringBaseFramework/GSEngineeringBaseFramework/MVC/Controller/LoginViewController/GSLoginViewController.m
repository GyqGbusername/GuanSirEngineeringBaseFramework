//
//  GSLoginViewController.m
//  GSEngineeringBaseFramework
//
//  Created by 关宇琼 on 16/5/6.
//  Copyright © 2016年 GuanSir. All rights reserved.
//

#import "GSLoginViewController.h"
#import "GSBaseTabBarController.h"

@interface GSLoginViewController ()
@property (strong, nonatomic) IBOutlet UITextField *userName;
@property (strong, nonatomic) IBOutlet UITextField *pwd;

@end

@implementation GSLoginViewController


static GSLoginViewController *sharedGSLoginViewController = nil;

+ (GSLoginViewController *)sharedGSLoginViewController
{
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        sharedGSLoginViewController = [[self alloc] init];
    });
    return sharedGSLoginViewController;
}




- (void)initUI {
    
}


- (IBAction)login:(id)sender {
    [self dataHandles];
}

/**
 * 登录
 */
- (void)dataHandles {
    [SVProgressHUD showWithStatus:gs_Status_Load];
    
    NSString *urlStr = [NSString stringWithFormat:@"%@%@", gs_BaseURL, gs_url_Auth_StoreLoginByPwd];
    
    NSDictionary *paramDict = @{
                                @"mobile":_userName.text,
                                @"pwd":_pwd.text
                                };
    
    [ApplicationDelegate.httpManager POST:urlStr parameters:paramDict progress:^(NSProgress * _Nonnull uploadProgress) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        //http请求状态
        if (task.state == NSURLSessionTaskStateCompleted) {
            NSDictionary *jsonDic = [JYJSON dictionaryOrArrayWithJSONSData:responseObject];
            NSString *status = [NSString stringWithFormat:@"%@",jsonDic[@"Success"]];
            if ([status isEqualToString:@"1"]) {
                //成功返回,获取用户信息
                [self getUserInfo];
            } else {
                [SVProgressHUD showErrorWithStatus:jsonDic[@"Message"]];
            }
            
        } else {
            [SVProgressHUD showErrorWithStatus:gs_Error_Network];
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //请求异常
        [SVProgressHUD showErrorWithStatus:gs_Error_Network];
    }];
}


/**
 *  获取用户信息
 */

- (void) getUserInfo
{
    [SVProgressHUD showWithStatus:gs_Status_Load];
    
    NSString *urlStr = [NSString stringWithFormat:@"%@%@",gs_BaseURL,gs_url_Auth_StoreByMobile];
    
    NSDictionary *paramDict = @{
                                @"mobile":_userName.text,
                                };
    [ApplicationDelegate.httpManager POST:urlStr parameters:paramDict progress:^(NSProgress * _Nonnull uploadProgress) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        //http请求状态
        if (task.state == NSURLSessionTaskStateCompleted) {
            NSDictionary *jsonDic = [JYJSON dictionaryOrArrayWithJSONSData:responseObject];
            NSLog(@"%@",jsonDic);
            NSString *status = [NSString stringWithFormat:@"%@",jsonDic[@"Success"]];
            if ([status isEqualToString:@"1"]) {
                // 当前用户信息存入公共位置
                GSUserInfoModel *userInfo = [[GSUserInfoModel alloc] initWithDic:jsonDic[@"Data"]];
                ApplicationDelegate.userInfo = userInfo;
                ApplicationDelegate.isLogin = YES;
                // 登录成功，记录用户名密码，以备下次自动登录
                ApplicationDelegate.window.rootViewController = [GSBaseTabBarController sharedGSBaseTabBarController];
                [gs_NSUserDefaults setObject:_userName.text forKey:gs_UD_username];
                [gs_NSUserDefaults setObject:_pwd.text forKey:gs_UD_password];
                [gs_NSUserDefaults setObject:@"1" forKey:gs_UD_token];
                [gs_NSUserDefaults synchronize];
                [SVProgressHUD showSuccessWithStatus:@"登陆成功"];
            } else {
                [SVProgressHUD showErrorWithStatus:jsonDic[@"Message"]];
            }
            
        } else {
            [SVProgressHUD showErrorWithStatus:gs_Error_Network];
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //请求异常
        [SVProgressHUD showErrorWithStatus:gs_Error_Network];
    }];
    
}





- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
