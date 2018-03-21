//
//  UITextField+Style.m
//  FCGraze
//
//  Created by fcx on 2018/3/21.
//  Copyright © 2018年 fuchenxi. All rights reserved.
//

#import "UITextField+Style.h"

@implementation UITextField (Style)

- (void)setPlaceholderColor:(UIColor *)placeholderColor {
    
    [self setValue:placeholderColor forKeyPath:@"_placeholderLabel.textColor"];
}

- (UIColor *)placeholderColor {
    
    return [self valueForKeyPath:@"_placeholderLabel.textColor"];
}

- (void)setPlaceholderFont:(UIFont *)placeholderFont {
    
    [self setValue:placeholderFont forKeyPath:@"_placeholderLabel.font"];
}

- (UIFont *)placeholderFont {
    
    return [self valueForKeyPath:@"_placeholderLabel.font"];
}

@end
