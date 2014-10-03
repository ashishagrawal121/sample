//
//  Created by Mustafa Murabbi on 5/21/14.
//  Copyright (c) 2014 Mustafa Murabbi All rights reserved.
//

#import <Foundation/NSURLConnection.h>
#import "IQWebServiceConstants.h"


@interface IQURLConnection : NSURLConnection

+ (IQURLConnection*)sendAsynchronousRequest:(NSURLRequest *)request responseBlock:(IQResponseBlock)responseBlock uploadProgressBlock:(IQProgressBlock)uploadProgress downloadProgressBlock:(IQProgressBlock)downloadProgress completionHandler:(IQDataCompletionBlock)completion;

-(id)initWithRequest:(NSURLRequest *)request responseBlock:(IQResponseBlock*)responseBlock uploadProgressBlock:(IQProgressBlock*)uploadProgress downloadProgressBlock:(IQProgressBlock*)downloadProgress completionBlock:(IQDataCompletionBlock*)completion;

@end
