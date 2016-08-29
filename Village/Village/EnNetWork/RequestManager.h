//
//  RequestManager.h
//  Leisure
//
//  Created by I三生有幸I on 16/3/11.
//  Copyright © 2016年 盛辰. All rights reserved.
//


#import <Foundation/Foundation.h>
typedef void(^Finish)(NSData *data);//请求成功
typedef void(^Error)(NSError *error);//请求失败

typedef NS_ENUM(NSInteger, RequestType) {
    RequestTypePOST,
    RequestTypeGET
};

@interface RequestManager : NSObject

//属性保存外界传过来的Block
@property (nonatomic, copy) Finish finish;
@property (nonatomic, copy) Error error;

//网络请求类

//给这个类一个网址、参数、请求方式 让这个类返回数据（NSData）
//1、属性  2、方法(给这个类东西)
//1、Block  2、代理  3、方法返回值(暂不适用)（让这个类返回东西）

+ (void)requestWithUrl:(NSString *)urlSting requestType:(RequestType)requestType parDic:(NSDictionary *)parDic finish:(Finish)finish error:(Error)error;



@end










