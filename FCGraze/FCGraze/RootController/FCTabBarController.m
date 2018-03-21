//
//  FCTabBarController.m
//  FCGraze
//
//  Created by fcx on 2018/3/21.
//  Copyright © 2018年 fuchenxi. All rights reserved.
//

#import "FCTabBarController.h"
#import "FCNavigationController.h"

#import "FCHomeViewController.h"
#import "FCGrazeViewController.h"
#import "FCMallViewController.h"
#import "FCHelpFarmerViewController.h"
#import "FCPersonalViewController.h"

@interface FCTabBarController () <UITabBarControllerDelegate, CYLTabBarControllerDelegate>

@end

@implementation FCTabBarController

+ (instancetype)tabBarController {
    
    FCTabBarController *tabBar_vc = [self tabBarControllerWithViewControllers:[self viewControllers] tabBarItemsAttributes:[self tabBarItemsAttributesForController] imageInsets:UIEdgeInsetsMake(-1.5, 0, 1.5, 0) titlePositionAdjustment:UIOffsetMake(0, -4.5)];
    tabBar_vc.delegate = tabBar_vc;
    [tabBar_vc customizeTabBarAppearance];
    return tabBar_vc;
}

+ (NSArray *)viewControllers {
    
    NSMutableArray *viewControllers = @[].mutableCopy;
    
    /// 首页
    {
        FCHomeViewController *home_vc = [[FCHomeViewController alloc] init];
        FCNavigationController *home_nav = [[FCNavigationController alloc] initWithRootViewController:home_vc];
        [viewControllers addObject:home_nav];
    }
    
    /// 放牧
    {
        FCGrazeViewController *graze_vc = [[FCGrazeViewController alloc] init];
        FCNavigationController *graze_nav = [[FCNavigationController alloc] initWithRootViewController:graze_vc];
        [viewControllers addObject:graze_nav];
    }
    
    /// 扶农
    {
        FCHelpFarmerViewController *helpFarmer_vc = [[FCHelpFarmerViewController alloc] init];
        FCNavigationController *helpFarmer_nav = [[FCNavigationController alloc] initWithRootViewController:helpFarmer_vc];
        [viewControllers addObject:helpFarmer_nav];
    }
    
    /// 商城
    {
        FCMallViewController *mall_vc = [[FCMallViewController alloc] init];
        FCNavigationController *mall_nav = [[FCNavigationController alloc] initWithRootViewController:mall_vc];
        [viewControllers addObject:mall_nav];
    }
    
    /// 我的
    {
        FCPersonalViewController *personal_vc = [[FCPersonalViewController alloc] init];
        FCNavigationController *personal_nav = [[FCNavigationController alloc] initWithRootViewController:personal_vc];
        [viewControllers addObject:personal_nav];
    }
    
    return viewControllers.copy;
}

+ (NSArray *)tabBarItemsAttributesForController {
    
    NSMutableArray *tabBarItemsAttributes = @[].mutableCopy;
    
    /// 首页
    {
        NSDictionary *firstTabBarItemsAttributes = @{
                                                     CYLTabBarItemTitle : @"首页",
                                                     CYLTabBarItemImage : @"huowu_m",
                                                     CYLTabBarItemSelectedImage : @"huowu_h",
                                                     };
        [tabBarItemsAttributes addObject:firstTabBarItemsAttributes];
    }
    
    /// 放牧
    {
        NSDictionary *secondTabBarItemsAttributes = @{
                                                      CYLTabBarItemTitle : @"放牧",
                                                      CYLTabBarItemImage : @"beihuo_m",
                                                      CYLTabBarItemSelectedImage : @"beihuo_h",
                                                      };
        [tabBarItemsAttributes addObject:secondTabBarItemsAttributes];
    }
    
    /// 扶农
    {
        NSDictionary *thirdTabBarItemsAttributes = @{
                                                     CYLTabBarItemTitle : @"扶农",
                                                     CYLTabBarItemImage : @"tuihuo_m",
                                                     CYLTabBarItemSelectedImage : @"tuihuo_h",
                                                     };
        [tabBarItemsAttributes addObject:thirdTabBarItemsAttributes];
    }
    
    /// 商城
    {
        NSDictionary *fourthTabBarItemsAttributes = @{
                                                      CYLTabBarItemTitle : @"商城",
                                                      CYLTabBarItemImage : @"jiesuan_m",
                                                      CYLTabBarItemSelectedImage : @"jiesuan_h",
                                                      };
        [tabBarItemsAttributes addObject:fourthTabBarItemsAttributes];
    }
    
    /// 我的
    {
        NSDictionary *fifthTabBarItemsAttributes = @{
                                                     CYLTabBarItemTitle : @"我的",
                                                     CYLTabBarItemImage : @"pre_m",
                                                     CYLTabBarItemSelectedImage : @"pre_h"
                                                     };
        [tabBarItemsAttributes addObject:fifthTabBarItemsAttributes];
    }
    return tabBarItemsAttributes.copy;
}

- (void)customizeTabBarAppearance {
    
    NSMutableDictionary *normalAttrs = [NSMutableDictionary dictionary];
    normalAttrs[NSForegroundColorAttributeName] = UIColorHex(999999);
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSForegroundColorAttributeName] = [UIColor orangeColor];
    UITabBarItem *tabBar = [UITabBarItem appearance];
    [tabBar setTitleTextAttributes:normalAttrs forState:UIControlStateNormal];
    [tabBar setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    [[UITabBar appearance] setBackgroundImage:[[UIImage alloc] init]];
    [[UITabBar appearance] setBackgroundColor:[UIColor whiteColor]];
    [[UITabBar appearance] setShadowImage:[[UIImage alloc] init]];
    self.tabBar.layer.shadowColor = [UIColor blackColor].CGColor;
    self.tabBar.layer.shadowOffset = CGSizeMake(0, -1.5);
    self.tabBar.layer.shadowOpacity = 0.1;
    self.tabBar.layer.shadowRadius = 4;
}

#pragma mark -
#pragma mark - TabBar Delegate
- (void)tabBarController:(UITabBarController *)tabBarController didSelectControl:(UIControl *)control {
    
    UIView *animationView;
    if ([control cyl_isTabButton]) {
        animationView = [control cyl_tabImageView];
    }
    
    // 即使 PlusButton 也添加了点击事件，点击 PlusButton 后也会触发该代理方法。
    if ([control cyl_isPlusButton]) {
        UIButton *button = CYLExternPlusButton;
        animationView = button.imageView;
    }
    [self addScaleAnimationOnView:animationView repeatCount:1];
}

#pragma mark -
#pragma mark - Animation
- (void)addScaleAnimationOnView:(UIView *)animationView repeatCount:(float)repeatCount {
    
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animation];
    animation.keyPath = @"transform.scale";
    animation.values = @[@1.0,@1.15,@0.85,@1.08,@0.93,@1.0];
    animation.duration = 0.7;
    animation.repeatCount = repeatCount;
    animation.calculationMode = kCAAnimationCubic;
    [animationView.layer addAnimation:animation forKey:nil];
}

- (BOOL)prefersStatusBarHidden {
    
    return self.selectedViewController.prefersStatusBarHidden;
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    
    return self.selectedViewController.preferredStatusBarStyle;
}

- (UIStatusBarAnimation)preferredStatusBarUpdateAnimation {
    
    return self.selectedViewController.preferredStatusBarUpdateAnimation;
}


@end
