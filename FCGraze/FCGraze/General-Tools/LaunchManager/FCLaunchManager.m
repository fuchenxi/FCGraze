//
//  FCLaunchManager.m
//  FCGraze
//
//  Created by fcx on 2018/3/21.
//  Copyright © 2018年 fuchenxi. All rights reserved.
//

#import "FCLaunchManager.h"

@implementation FCLaunchManager

+ (void)LaunchFadeInView:(UIView *)view {
    
    CGSize viewSize = view.bounds.size;
    NSString *viewOrientation = @"Portrait";
    NSString *launchImage = nil;
    
    NSArray* imagesDict = [[[NSBundle mainBundle] infoDictionary] valueForKey:@"UILaunchImages"];
    for (NSDictionary* dict in imagesDict) {
        
        CGSize imageSize = CGSizeFromString(dict[@"UILaunchImageSize"]);
        
        if (CGSizeEqualToSize(imageSize, viewSize) && [viewOrientation isEqualToString:dict[@"UILaunchImageOrientation"]]) {
            
            launchImage = dict[@"UILaunchImageName"];
        }
    }
    
    UIImageView *launchView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:launchImage]];
    launchView.frame = view.bounds;
    launchView.contentMode = UIViewContentModeScaleAspectFill;
    [view addSubview:launchView];
    [UIView animateWithDuration:2.0f
                          delay:0.0f
                        options:UIViewAnimationOptionBeginFromCurrentState
                     animations:^{
                         
                         launchView.alpha = 0.0f;
                         launchView.layer.transform = CATransform3DScale(CATransform3DIdentity, 1.3, 1.3, 1);
                         
                     }
                     completion:^(BOOL finished) {
                         
                         [launchView removeFromSuperview];
                         
                     }];
}

@end
