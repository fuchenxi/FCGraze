//
//  FCRequest.m
//  FCNetworking
//
//  Created by 付晨曦 on 2017/8/9.
//  Copyright © 2017年 floruit. All rights reserved.
//

#import "FCRequest.h"

@implementation FCRequest

+ (instancetype)request {
    
    return [[self alloc] init];
}

- (instancetype)init {
    
    if (self = [super init]) {
        
        _requestType = kFCRequestTypeNormal;
        _httpMethod = kFCHTTPMethodTypePOST;
        _requestSerializerType = kFCRequestSerializerTypeRAW;
        _responseSerializerType = kFCResponseSerializerTypeJSON;
        _timeoutInterval = 20.0;
        _autoAlertMessage = YES;
        
        _useGeneralServer = YES;
        _useGeneralHeaders = YES;
        _useGeneralParameters = YES;
        
        _retryCount = 0;
    }
    return self;
}

- (void)cleanCallbackBlocks {
    
    _successBlock = nil;
    _failureBlock = nil;
    _finishedBlock = nil;
    _progressBlock = nil;
}

- (NSMutableArray<FCUploadFormData *> *)uploadFormDatas {
    if (!_uploadFormDatas) {
        _uploadFormDatas = [NSMutableArray array];
    }
    return _uploadFormDatas;
}

- (void)addFormDataWithName:(NSString *)name fileData:(NSData *)fileData {
    FCUploadFormData *formData = [FCUploadFormData formDataWithName:name fileData:fileData];
    [self.uploadFormDatas addObject:formData];
}

- (void)addFormDataWithName:(NSString *)name fileName:(NSString *)fileName mimeType:(NSString *)mimeType fileData:(NSData *)fileData {
    FCUploadFormData *formData = [FCUploadFormData formDataWithName:name fileName:fileName mimeType:mimeType fileData:fileData];
    [self.uploadFormDatas addObject:formData];
}

- (void)addFormDataWithName:(NSString *)name fileURL:(NSURL *)fileURL {
    FCUploadFormData *formData = [FCUploadFormData formDataWithName:name fileURL:fileURL];
    [self.uploadFormDatas addObject:formData];
}

- (void)addFormDataWithName:(NSString *)name fileName:(NSString *)fileName mimeType:(NSString *)mimeType fileURL:(NSURL *)fileURL {
    FCUploadFormData *formData = [FCUploadFormData formDataWithName:name fileName:fileName mimeType:mimeType fileURL:fileURL];
    [self.uploadFormDatas addObject:formData];
}

@end


@implementation FCUploadFormData

+ (instancetype)formDataWithName:(NSString *)name fileData:(NSData *)fileData {
    
    FCUploadFormData *formData = [[FCUploadFormData alloc] init];
    formData.name = name;
    formData.fileData = fileData;
    return formData;
}

+ (instancetype)formDataWithName:(NSString *)name fileName:(NSString *)fileName mimeType:(NSString *)mimeType fileData:(NSData *)fileData {
    
    FCUploadFormData *formData = [[FCUploadFormData alloc] init];
    formData.name = name;
    formData.fileName = fileName;
    formData.mimeType = mimeType;
    formData.fileData = fileData;
    return  formData;
}

+ (instancetype)formDataWithName:(NSString *)name fileURL:(NSURL *)fileURL {
    
    FCUploadFormData *formData = [[FCUploadFormData alloc] init];
    formData.name = name;
    formData.fileURL = fileURL;
    return formData;
}

+ (instancetype)formDataWithName:(NSString *)name fileName:(NSString *)fileName mimeType:(NSString *)mimeType fileURL:(NSURL *)fileURL {
    
    FCUploadFormData *formData = [[FCUploadFormData alloc] init];
    formData.name = name;
    formData.fileName = fileName;
    formData.mimeType = mimeType;
    formData.fileURL = fileURL;
    return formData;
}

@end
