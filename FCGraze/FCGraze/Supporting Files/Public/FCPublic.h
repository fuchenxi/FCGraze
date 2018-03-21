//
//  FCPublic.h
//  FCGraze
//
//  Created by fcx on 2018/3/21.
//  Copyright © 2018年 fuchenxi. All rights reserved.
//

#ifndef FCPublic_h
#define FCPublic_h

#define APPDELEGATE ((AppDelegate *)[UIApplication sharedApplication].delegate)

/// 等比适配
#define FCScale(value) (MAX((kScreenWidth / 375.0),1.0) * (value))
/// 默认字体
#define FCFont(fontSize) [UIFont systemFontOfSize:FCScale(fontSize)]
/// 加粗字体
#define FCBoldFont(fontSize) [UIFont boldSystemFontOfSize:FCScale(fontSize)]

#define SJ_SAFE_BLOCK(BlockName, ...) ({ !BlockName ? nil : BlockName(__VA_ARGS__); })
#define SJ_SAFE_STRING(string) ({ string = (string.length > 0 ? string : @""); })
/// 线宽
#define kLineWidth (CGFloatFromPixel(1))

#define kPadding10 SJScale(10)
#define kPadding15 SJScale(15)
#define kItemHeight SJScale(50)

#endif /* FCPublic_h */
