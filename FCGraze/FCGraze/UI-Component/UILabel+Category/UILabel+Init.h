//
//  UILabel+Init.h
//  FCGraze
//
//  Created by fcx on 2018/3/21.
//  Copyright © 2018年 fuchenxi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Init)

/**
 便利构造UILabel对象
 
 @param text 文本
 @param fontSize 文本大小
 @param color 文本颜色
 @return UILabel对象
 */
+ (instancetype)labelWithText:(NSString *)text
                     fontSize:(CGFloat)fontSize
                        color:(UIColor *)color;

/**
 便利构造UILabel对象
 
 @param text 文本
 @param boldFont 文本大小
 @param color 文本颜色
 @return UILabel对象
 */
+ (instancetype)labelWithText:(NSString *)text
                     boldFont:(CGFloat)boldFont
                        color:(UIColor *)color;

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
                textAlignment:(NSTextAlignment)textAlignment;

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
                textAlignment:(NSTextAlignment)textAlignment;

#pragma mark -
#pragma mark - hexString
/**
 便利构造UILabel对象
 
 @param text 文本
 @param fontSize 文本大小
 @param hexString 文本颜色
 @return UILabel对象
 */
+ (instancetype)labelWithText:(NSString *)text
                     fontSize:(CGFloat)fontSize
                    hexString:(NSString *)hexString;

/**
 便利构造UILabel对象
 
 @param text 文本
 @param boldFont 文本大小
 @param hexString 文本颜色
 @return UILabel对象
 */
+ (instancetype)labelWithText:(NSString *)text
                     boldFont:(CGFloat)boldFont
                    hexString:(NSString *)hexString;

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
                textAlignment:(NSTextAlignment)textAlignment;

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
                textAlignment:(NSTextAlignment)textAlignment;

@end
