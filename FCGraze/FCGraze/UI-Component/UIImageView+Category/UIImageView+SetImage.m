//
//  UIImageView+SetImage.m
//  FCGraze
//
//  Created by fcx on 2018/3/21.
//  Copyright © 2018年 fuchenxi. All rights reserved.
//

#import "UIImageView+SetImage.h"

@implementation UIImageView (SetImage)

- (void)setUrlString:(NSString *)urlString {
    
    [self yy_setImageWithURL:[NSURL URLWithString:urlString] placeholder:[UIImage imageNamed:@"pic_none.jpg"]];
}

@end
