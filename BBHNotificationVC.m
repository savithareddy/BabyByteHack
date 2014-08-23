//
//  BBHNotificationVC.m
//  BabyByteHack
//
//  Created by Savitha Reddy on 8/23/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import "BBHNotificationVC.h"
#import "BBHDataSingle.h"

@interface BBHNotificationVC ()

@end

@implementation BBHNotificationVC
{
    UITextField *myMinText;
    UITextField *myMaxText;
    UILabel *countLabel;
    NSTimer *timer;
    NSDateFormatter *formatter;
    NSInteger counterup;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.view.backgroundColor = [UIColor whiteColor];
        
        formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"ss"];
        

        countLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 200, 310,40)];
        countLabel.textColor = [UIColor blackColor];
        countLabel.text = @"00";
        countLabel.backgroundColor = [UIColor orangeColor];
        countLabel.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:countLabel];
        
        timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(countUp) userInfo:nil repeats:YES];

        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationController.navigationBarHidden = YES;
    
    
//NSInteger randomNumber = arc4random() % 2;
//    [BBHDataSingle mainSingleton].randomNumSingle = randomNumber;
//    NSString *num = [NSString stringWithFormat:@"%d", (int)randomNumber];
//    [countLabel setText:num];
    
}

-(void) countUp
{
    counterup++;
    NSDate* date = [NSDate dateWithTimeIntervalSinceReferenceDate:counterup];
   countLabel.text = [formatter stringFromDate:date];
    NSInteger countSingle = [countLabel.text intValue];
    [BBHDataSingle mainSingleton].randomNumSingle = countSingle;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
   
}


@end
