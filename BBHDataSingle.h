//
//  STASingleton.h
//  STATUS1
//
//  Created by Savitha Reddy on 5/19/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BBHDataSingle : NSObject

+ (BBHDataSingle *) mainSingleton;

@property (nonatomic) NSInteger randomNumSingle;
@property (nonatomic) NSString  *themes;


@end
