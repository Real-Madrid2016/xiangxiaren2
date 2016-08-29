//
//  RequestManager.m
//  Leisure
//
//  Created by I三生有幸I on 16/3/11.
//  Copyright © 2016年 盛辰. All rights reserved.
//

#import "RequestManager.h"

@implementation RequestManager
+ (void)requestWithUrl:(NSString *)urlSting requestType:(RequestType)requestType parDic:(NSDictionary *)parDic finish:(Finish)finish error:(Error)error{
    RequestManager *request = [[RequestManager alloc] init];
    [request requestWithUrl:urlSting requestType:requestType parDic:parDic finish:finish error:error];
}

- (void)requestWithUrl:(NSString *)urlSting requestType:(RequestType)requestType parDic:(NSDictionary *)parDic finish:(Finish)finish error:(Error)error{
    
    self.finish = finish;
    self.error = error;
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:urlSting]];
    if (requestType == RequestTypePOST) {
        [request setHTTPMethod:@"POST"];
        if (parDic.count != 0) {
            [request setHTTPBody:[self dicToDataWithDic:parDic]];
        }
    }
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            self.error(error);
        } else {
            dispatch_async(dispatch_get_main_queue(), ^{
                self.finish(data);
            });
        }
    }];
    [task resume];
}

- (NSData *)dicToDataWithDic:(NSDictionary *)dic{
    //把字典里的简直对按照 Key＝Value 拼接成字符串，最后用&符号连接所有拼接好的字符串
    
    NSMutableArray *array = [NSMutableArray array];
    for (NSString *key in dic) {
        NSString *string = [NSString stringWithFormat:@"%@=%@", key, dic[key]];
        [array addObject:string];
    }
    NSString *dataString = [array componentsJoinedByString:@"&"];
    return [dataString dataUsingEncoding:NSUTF8StringEncoding];
}




@end
