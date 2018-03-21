//
//  FCNavigationController.m
//  FCGraze
//
//  Created by fcx on 2018/3/21.
//  Copyright © 2018年 fuchenxi. All rights reserved.
//

#import "FCNavigationController.h"

@interface FCNavigationController ()

@end

@implementation FCNavigationController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self setNavigationBarHidden:YES];
}

- (BOOL)prefersStatusBarHidden {
    
    return self.topViewController.prefersStatusBarHidden;
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    
    return self.topViewController.preferredStatusBarStyle;
}

- (UIStatusBarAnimation)preferredStatusBarUpdateAnimation {
    
    return self.topViewController.preferredStatusBarUpdateAnimation;
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    if (self.viewControllers.count > 0) {
        
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}

@end
