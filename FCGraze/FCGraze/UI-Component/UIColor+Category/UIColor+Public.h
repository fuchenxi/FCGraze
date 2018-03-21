//
//  UIColor+Public.h
//  FCGraze
//
//  Created by fcx on 2018/3/21.
//  Copyright © 2018年 fuchenxi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Public)

/// 标题颜色
+ (UIColor *)titleColor;
/// 分割线颜色
+ (UIColor *)lineColor;
/// 默认背景颜色
+ (UIColor *)backgroundColor;
/// 随机色
+ (UIColor *)randomColor;
/// TextField's placeHolderColor
+ (UIColor *)placeHolderColor;

@end
