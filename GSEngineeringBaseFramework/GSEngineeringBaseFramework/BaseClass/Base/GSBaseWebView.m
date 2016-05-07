//
//  GSBaseWebView.m
//  GSEngineeringBaseFramework
//
//  Created by 关宇琼 on 16/5/6.
//  Copyright © 2016年 GuanSir. All rights reserved.
//

#import "GSBaseWebView.h"

@interface GSBaseWebView () <UIWebViewDelegate>

@property (strong, nonatomic) UIWebView *webview;

@end

@implementation GSBaseWebView

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self initData];
    
    [self initUI];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

#pragma mark - Private Method
/**
 *  页面数据
 */
- (void)initData
{
    CGRect rect = [UIScreen mainScreen].bounds;
    rect.size.height -= gs_Navi_Height;
    _webview = [[UIWebView alloc] initWithFrame:rect];
    _webview.delegate = self;
    [self.view addSubview:_webview];
    
    if (_isHtmlString) {
        [_webview loadHTMLString:_urlStr baseURL:[NSURL URLWithString:gs_BaseURL]];
    } else {
        NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:_urlStr]];
        if (request) {
            [_webview loadRequest:request];
        } else {
            [SVProgressHUD showErrorWithStatus:gs_Error_Unknown];
        }
    }
    
    
}
/**
 *  页面布局
 */
- (void)initUI
{
    
}

#pragma mark - WebView Delegate

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    [SVProgressHUD showWithStatus:gs_Status_Load];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [SVProgressHUD dismiss];
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    [SVProgressHUD showErrorWithStatus:gs_Error_WebViewError];
}



@end
