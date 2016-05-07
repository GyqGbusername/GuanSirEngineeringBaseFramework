//
//  GSBaseTabBarController.m
//  GSEngineeringBaseFramework
//
//  Created by 关宇琼 on 16/5/6.
//  Copyright © 2016年 GuanSir. All rights reserved.
//

#import "GSBaseTabBarController.h"
#import "GSBaseNavigationController.h"
#import "GSGuideViewController.h"

@interface GSBaseTabBarController () <UITabBarControllerDelegate>


@end

@implementation GSBaseTabBarController


static GSBaseTabBarController *sharedGSBaseTabBarController = nil;

+ (GSBaseTabBarController *)sharedGSBaseTabBarController
{
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        sharedGSBaseTabBarController = [[self alloc] init];
    });
    return sharedGSBaseTabBarController;
}


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
- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
}

#pragma mark - Data & UI
//数据
- (void)initData
{
    self.delegate = self;
    self.tabBar.tintColor = [UIColor orangeColor];
    self.tabBar.barTintColor = [UIColor whiteColor];
    
    [self setRootVCs];
//    [self setTabBarItemStyle];
}

//页面
- (void)initUI {
    
}

/**
 *  设置基本rootVC
 */
- (void)setRootVCs
{
    
    GSGuideViewController *myShopSB = [[GSGuideViewController alloc] init];
    GSBaseNavigationController *orderNav = [[GSBaseNavigationController alloc] initWithRootViewController:myShopSB];
    
    self.viewControllers = @[
                             orderNav
                             ];
}

/**
 *  设置item的样式
 */
- (void)setTabBarItemStyle
{
    UITabBarItem *item1 = self.tabBar.items[0];
    item1.tag = 0;
    item1.title = @"首页";
    item1.image = [UIImage imageNamed:@"tab_home"];
    
    UITabBarItem *item2 = self.tabBar.items[1];
    item2.tag = 1;
    item2.title = @"商城";
    item2.image = [UIImage imageNamed:@"tab_shop"];
    
    UITabBarItem *item3 = self.tabBar.items[2];
    item3.tag = 2;
    item3.title = @"购物车";
    item3.image = [UIImage imageNamed:@"tab_shop_car"];
    
    UITabBarItem *item4 = self.tabBar.items[3];
    item4.tag = 3;
    item4.title = @"我的信息";
    item4.image = [UIImage imageNamed:@"tab_my"];
    
}


#pragma mark - Delegate

- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
{
    return YES;
}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    if(tabBarController.selectedIndex == 0) {
        if ([viewController isKindOfClass:[UINavigationController class]]) {
            UINavigationController *nav = (UINavigationController *)viewController;
            [nav popViewControllerAnimated:NO];
        }
        
    }
}




@end
