//
//  SSService.h
//
//  Created by Mustafa Murabbi on 5/21/14.
//  Copyright (c) 2014 Mustafa Murabbi. All rights reserved.
//

#import "IQWebService.h"

@interface SSWebService : IQWebService

#pragma mark -
#pragma mark - User

-(void)loginUser:(NSDictionary*)userAttribute completionHandler:(IQDictionaryCompletionBlock)completionHandler;

-(void)signupUser:(NSDictionary*)userAttribute completionHandler:(IQDictionaryCompletionBlock)completionHandler;

-(void)updateProfile:(NSDictionary*)userAttribute completionHandler:(IQDictionaryCompletionBlock)completionHandler;

@end
