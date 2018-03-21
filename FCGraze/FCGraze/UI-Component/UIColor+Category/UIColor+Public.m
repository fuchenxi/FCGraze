//
//  UIColor+Public.m
//  FCGraze
//
//  Created by fcx on 2018/3/21.
//  Copyright © 2018年 fuchenxi. All rights reserved.
//

#import "UIColor+Public.h"

@implementation UIColor (Public)

+ (UIColor *)titleColor {
    
    return [UIColor colorWithHexString:@"333333"];
}

+ (UIColor *)lineColor {
    
    return [UIColor colorWithHexString:@"e5e5e5"];
}

+ (UIColor *)backgroundColor {
    
    return [UIColor colorWithHexString:@"f5f6f7"];
}

+ (UIColor *)randomColor {
    
    return [UIColor colorWithRed:arc4random_uniform(256)/255.0
                           green:arc4random_uniform(256)/255.0
                            blue:arc4random_uniform(256)/255.0 alpha:1.0];
}

+ (UIColor *)orangeColor {
    
    return [UIColor colorWithHexString:@"ffa938"];
}

+ (UIColor *)redColor {
    
    return [UIColor colorWithHexString:@"f76866"];
}

+ (UIColor *)placeHolderColor {
    
    return [UIColor colorWithHexString:@"cccccc"];
}

@end
