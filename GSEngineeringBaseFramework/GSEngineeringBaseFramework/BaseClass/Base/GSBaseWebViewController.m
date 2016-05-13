//
//  GSBaseWebView.m
//  GSEngineeringBaseFramework
//
//  Created by 关宇琼 on 16/5/6.
//  Copyright © 2016年 GuanSir. All rights reserved.
//

#import "GSBaseWebViewController.h"

@interface GSBaseWebViewController () <WKUIDelegate>

@property (strong, nonatomic) WKWebView *webview;

@end

@implementation GSBaseWebViewController

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



- (void)setUrlStr:(NSString *)urlStr {
    if (_urlStr != urlStr ) {
        _urlStr = urlStr;
    }
}

- (void)setHtmlString:(NSString *)htmlString {
    if (_htmlString != htmlString) {
        _htmlString = htmlString;
    }
    _isHtmlString = YES;
}

#pragma mark - Private Method
/**
 *  页面数据
 */
- (void)initData
{
    CGRect rect = [UIScreen mainScreen].bounds;
    rect.size.height -= gs_Navi_Height;
    _webview = [[WKWebView alloc] initWithFrame:rect];
    _webview.UIDelegate = self;
    [self.view addSubview:_webview];
    
    if (_isHtmlString) {
        [_webview loadHTMLString:_urlStr baseURL:[NSURL URLWithString:gs_BaseURL]];
    } else {
        NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:_urlStr]];
        if (request) {
            [_webview loadRequest:request];
        } else {
            [LCProgressHUD showFailure:gs_Error_Network];
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
    [LCProgressHUD showLoading:gs_Status_Load];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [LCProgressHUD hide];
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    [LCProgressHUD showFailure:gs_Error_WebViewError];
}



@end
