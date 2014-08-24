//
//  BBHViewCircle.m
//  BabyByteHack
//
//  Created by Savitha Reddy on 8/23/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import "BBHViewCircle.h"
#import <QuartzCore/QuartzCore.h>

@implementation BBHViewCircle

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

 
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 2.0);
    CGContextSetStrokeColorWithColor(context,
                                     [UIColor blueColor].CGColor);
    CGRect rectangle1 = CGRectMake(60,170,80,80);
    CGContextAddEllipseInRect(context, rectangle1);
    CGContextStrokePath(context);
    
    CGContextSetLineWidth(context, 4.0);
    CGContextSetStrokeColorWithColor(context,
                                     [UIColor orangeColor].CGColor);
    CGRect rectangle2 = CGRectMake(55,165,90,90);
   
    CGContextAddEllipseInRect(context, rectangle2);
    CGContextStrokePath(context);
    
//    CGContextSetLineWidth(context, 2.0);
//    CGContextSetStrokeColorWithColor(context,
//                                     [UIColor greenColor].CGColor);
//    CGContextMoveToPoint(context, 100, 200);
//     CGContextAddLineToPoint(context, 50, 150);
//    CGContextAddLineToPoint(context, 150, 150);
    
    CGContextBeginPath(context);
    CGContextMoveToPoint(context, 50.0, 280.0);
    CGContextAddLineToPoint(context, 100.0, 220.0);
    CGContextAddLineToPoint(context, 150.0f,280.0f);
    CGContextSetLineWidth(context, 2);
    

    CGContextClosePath(context);
    CGContextSetRGBFillColor(context, 0, 0, 0, 1);
    CGContextFillPath(context);
//    CGContextStrokePath(context);
    
   

    
    
}
























@end
