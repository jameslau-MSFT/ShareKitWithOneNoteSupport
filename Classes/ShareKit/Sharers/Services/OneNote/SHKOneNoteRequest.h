//
// Created by Alex Serbinenko on 2014-03-31.
//

#import <Foundation/Foundation.h>
#import "SHKRequest.h"


@interface SHKOneNoteRequest : SHKRequest

@property (strong) NSURLRequest *request;

- (id)initWithRequest:(NSURLRequest *)r completion:(RequestCallback)completionBlock;


@end
