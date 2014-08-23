//
//  STASingleton.m
//  STATUS1
//
//  Created by Savitha Reddy on 5/19/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import "BBHDataSingle.h"

@implementation BBHDataSingle

+(BBHDataSingle *) mainSingleton
{
    static dispatch_once_t create;
    static BBHDataSingle  *singleton = nil;
    dispatch_once(&create, ^{
        singleton = [[BBHDataSingle alloc] init];
    });
    return singleton;
}

@end
