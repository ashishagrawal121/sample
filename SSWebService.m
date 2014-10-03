//
//  SSService.m
//
//  Created by Mustafa Murabbi on 5/21/14.
//  Copyright (c) 2014 Mustafa Murabbi. All rights reserved.
//

#import "SSWebService.h"

@implementation SSWebService

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setLogEnabled:YES];
        [self setParameterType:IQRequestParameterTypeJSON];
//        [self setServerURL:@"http://www.example.com"];

//        NSString *boundary = @"---------------------------14737809831466499882746641449";
//
//        [self setDefaultContentType:[NSString stringWithFormat:@"multipart/form-data; boundary=%@",boundary]];
//        
//        NSMutableData *startData = [[NSMutableData alloc] init];
//        [startData appendData:[[NSString stringWithFormat:@"\r\n--%@--\r\n",boundary] dataUsingEncoding:NSUTF8StringEncoding]];
//        [startData appendData:[[NSString stringWithFormat:@"--%@\r\n", boundary] dataUsingEncoding:NSUTF8StringEncoding]];
//        [startData appendData:[[NSString stringWithFormat:@"Content-Disposition: form-data; name=\"data\"\r\n\r\n"] dataUsingEncoding:NSUTF8StringEncoding]];
//        [self setStartBodyData:startData];
//        
//        NSMutableData *endData = [[NSMutableData alloc] init];
//        [endData appendData:[[NSString stringWithFormat:@"\r\n"] dataUsingEncoding:NSUTF8StringEncoding]];
//        [self setEndBodyData:endData];
    }
    return self;
}

-(void)loginUser:(NSDictionary*)userAttribute completionHandler:(IQDictionaryCompletionBlock)completionHandler
{
    [self requestWithPath:@"api/signin.php?" httpMethod:kIQHTTPMethodPOST parameter:userAttribute completionHandler:completionHandler];
}

-(void)signupUser:(NSDictionary*)userAttribute completionHandler:(IQDictionaryCompletionBlock)completionHandler
{
    [self requestWithPath:@"api/signup.php?" httpMethod:kIQHTTPMethodPOST parameter:userAttribute completionHandler:completionHandler];
}

-(void)updateProfile:(NSDictionary*)userAttribute completionHandler:(IQDictionaryCompletionBlock)completionHandler
{
    [self requestWithPath:@"api/update_profile.php?" httpMethod:kIQHTTPMethodPOST parameter:userAttribute completionHandler:completionHandler];
}

@end
