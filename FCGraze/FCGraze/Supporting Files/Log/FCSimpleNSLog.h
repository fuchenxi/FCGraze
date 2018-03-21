//
//  FCSimpleNSLog.h
//  FCGraze
//
//  Created by fcx on 2018/3/21.
//  Copyright © 2018年 fuchenxi. All rights reserved.
//

#ifndef FCSimpleNSLog_h
#define FCSimpleNSLog_h

#import <Foundation/Foundation.h>
#import <asl.h>


#define THIS_FILE [(@"" __FILE__) lastPathComponent]


#define _NSLog(fmt,...) {                                               \
do                                                                  \
{                                                                   \
NSString *str = [NSString stringWithFormat:fmt, ##__VA_ARGS__]; \
printf("%s\n",[str UTF8String]);                                \
}                                                                   \
while (0);                                                          \
}


#define NSLog(fmt, ...) _NSLog((@"%@:%d %s " fmt), THIS_FILE, __LINE__, __FUNCTION__, ##__VA_ARGS__)
#define MessageLog(fmt, ...) _NSLog((@"" fmt), ##__VA_ARGS__)


#ifdef DEBUG
#define DLog(fmt, ...) _NSLog((@"%@:%d %s " fmt),                \
THIS_FILE,                                           \
__LINE__,                                            \
__FUNCTION__,                                        \
##__VA_ARGS__)
#else
#define DLog(...)
#endif

#endif /* FCSimpleNSLog_h */
