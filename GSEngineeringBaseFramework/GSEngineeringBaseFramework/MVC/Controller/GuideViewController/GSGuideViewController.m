//
//  GSGuideViewController.m
//  GSEngineeringBaseFramework
//
//  Created by 关宇琼 on 16/5/6.
//  Copyright © 2016年 GuanSir. All rights reserved.
//

#import "GSGuideViewController.h"

@interface GSGuideViewController ()

@end

@implementation GSGuideViewController


- (void)initUI {
    [super initUI];
    UIWebView *wv = [[UIWebView alloc] initWithFrame:gs_Screen_Frame];
    [self.view addSubview:wv];
    [wv loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://192.168.0.178/lll/mob"]]];
}

- (void)dataHandle {
    
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
