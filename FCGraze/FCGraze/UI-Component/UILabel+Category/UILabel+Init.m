//
//  UILabel+Init.m
//  FCGraze
//
//  Created by fcx on 2018/3/21.
//  Copyright © 2018年 fuchenxi. All rights reserved.
//

#import "UILabel+Init.h"

@implementation UILabel (Init)

#pragma mark -
#pragma mark - UIColor
/**
 便利构造UILabel对象
 
 @param text 文本
 @param fontSize 文本大小
 @param color 文本颜色
 @return UILabel对象
 */
+ (instancetype)labelWithText:(NSString *)text
                     fontSize:(CGFloat)fontSize
                        color:(UIColor *)color {
    
    UILabel *label = [[UILabel alloc] init];
    label.text = text;
    label.font = FCFont(fontSize);
    label.textColor = color;
    label.textAlignment = NSTextAlignmentLeft;
    [label sizeToFit];
    return label;
}

/**
 便利构造UILabel对象
 
 @param text 文本
 @param boldFont 文本大小
 @param color 文本颜色
 @return UILabel对象
 */
+ (instancetype)labelWithText:(NSString *)text
                     boldFont:(CGFloat)boldFont
                        color:(UIColor *)color {
    
    UILabel *label = [[UILabel alloc] init];
    label.text = text;
    label.font = FCBoldFont(boldFont);
    label.textColor = color;
    label.textAlignment = NSTextAlignmentLeft;
    [label sizeToFit];
    return label;
}

/**
 便利构造UILabel对象
 
 @param text 文本
 @param fontSize 文本大小
 @param color 文本颜色
 @param textAlignment 文本对齐方式
 @return UILabel对象
 */
+ (instancetype)labelWithText:(NSString *)text
                     fontSize:(CGFloat)fontSize
                        color:(UIColor *)color
                textAlignment:(NSTextAlignment)textAlignment {
    
    UILabel *label = [[UILabel alloc] init];
    label.text = text;
    label.font = FCFont(fontSize);
    label.textColor = color;
    label.textAlignment = textAlignment;
    [label sizeToFit];
    return label;
}

/**
 便利构造UILabel对象
 
 @param text 文本
 @param boldFont 文本大小
 @param color 文本颜色
 @param textAlignment 文本对齐方式
 @return UILabel对象
 */
+ (instancetype)labelWithText:(NSString *)text
                     boldFont:(CGFloat)boldFont
                        color:(UIColor *)color
                textAlignment:(NSTextAlignment)textAlignment {
    
    UILabel *label = [[UILabel alloc] init];
    label.text = text;
    label.font = FCBoldFont(boldFont);
    label.textColor = color;
    label.textAlignment = textAlignment;
    [label sizeToFit];
    return label;
}

#pragma mark -
#pragma mark - HexString
/**
 便利构造UILabel对象
 
 @param text 文本
 @param fontSize 文本大小
 @param hexString 文本颜色
 @return UILabel对象
 */
+ (instancetype)labelWithText:(NSString *)text
                     fontSize:(CGFloat)fontSize
                    hexString:(NSString *)hexString {
    
    UILabel *label = [[UILabel alloc] init];
    label.text = text;
    label.font = FCFont(fontSize);
    label.textColor = [UIColor colorWithHexString:hexString];
    label.textAlignment = NSTextAlignmentLeft;
    [label sizeToFit];
    return label;
}

/**
 便利构造UILabel对象
 
 @param text 文本
 @param boldFont 文本大小
 @param hexString 文本颜色
 @return UILabel对象
 */
+ (instancetype)labelWithText:(NSString *)text
                     boldFont:(CGFloat)boldFont
                    hexString:(NSString *)hexString {
    
    UILabel *label = [[UILabel alloc] init];
    label.text = text;
    label.font = FCBoldFont(boldFont);
    label.textColor = [UIColor colorWithHexString:hexString];
    label.textAlignment = NSTextAlignmentLeft;
    [label sizeToFit];
    return label;
}

/**
 便利构造UILabel对象
 
 @param text 文本
 @param fontSize 文本大小
 @param hexString 文本颜色
 @param textAlignment 文本对齐方式
 @return UILabel对象
 */
+ (instancetype)labelWithText:(NSString *)text
                     fontSize:(CGFloat)fontSize
                    hexString:(NSString *)hexString
                textAlignment:(NSTextAlignment)textAlignment {
    
    UILabel *label = [[UILabel alloc] init];
    label.text = text;
    label.font = FCFont(fontSize);
    label.textColor = [UIColor colorWithHexString:hexString];
    label.textAlignment = textAlignment;
    [label sizeToFit];
    return label;
}

/**
 便利构造UILabel对象
 
 @param text 文本
 @param boldFont 文本大小
 @param hexString 文本颜色
 @param textAlignment 文本对齐方式
 @return UILabel对象
 */
+ (instancetype)labelWithText:(NSString *)text
                     boldFont:(CGFloat)boldFont
                    hexString:(NSString *)hexString
                textAlignment:(NSTextAlignment)textAlignment {
    
    UILabel *label = [[UILabel alloc] init];
    label.text = text;
    label.font = FCBoldFont(boldFont);
    label.textColor = [UIColor colorWithHexString:hexString];
    label.textAlignment = textAlignment;
    [label sizeToFit];
    return label;
}

@end
