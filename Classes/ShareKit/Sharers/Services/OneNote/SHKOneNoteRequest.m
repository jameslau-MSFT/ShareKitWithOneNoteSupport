//
// Created by Alex Serbinenko on 2014-03-31.
//

#import "SHKOneNoteRequest.h"

#define SHK_TIMEOUT 90

@implementation SHKOneNoteRequest

- (id)initWithRequest:(NSURLRequest *)r completion:(RequestCallback)completionBlock
{
    self = [super initWithURL:r.URL params:nil method:r.HTTPMethod completion:completionBlock];
    if (self)
    {
        _request = r;
    }
    return self;
}

#pragma mark -

- (void)start
{
    // Start Connection
    NSURLConnection *aConnection = [[NSURLConnection alloc] initWithRequest:_request delegate:self startImmediately:YES];
    self.connection = aConnection;
}


@end
