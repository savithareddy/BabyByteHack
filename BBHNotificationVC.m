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
    UIBackgroundTaskIdentifier counterTask;
    NSInteger counterup;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.view.backgroundColor = [UIColor whiteColor];
                
        counterup = 0;

        countLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 200, 310,40)];
        countLabel.textColor = [UIColor blackColor];
        countLabel.text = @"0";
        countLabel.backgroundColor = [UIColor orangeColor];
        countLabel.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:countLabel];
        
        counterTask = [[UIApplication sharedApplication]
                       beginBackgroundTaskWithExpirationHandler:^{
                           // If you're worried about exceeding 10 minutes, handle it here
                       }];
        
        timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(countUp) userInfo:nil repeats:YES];

        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationController.navigationBarHidden = YES;
}

-(void) countUp
{
    if (counterup == 100 )
    {
        [timer invalidate];
        [[UIApplication sharedApplication] endBackgroundTask:counterTask];
        
    }else{
        
    counterup++;
    NSString *currentCount=[[NSString alloc] initWithFormat:@"%d",(int)counterup];
    countLabel.text=currentCount;
    }
    
    if (counterup == 5)
    {
        UIAlertView *alertViewOne = [[UIAlertView alloc] initWithTitle:@"Goal Reached! Congrats"  message:nil delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alertViewOne show];

        UILocalNotification *notification = [[UILocalNotification alloc]init];
        notification.repeatInterval = NSDayCalendarUnit;
        [notification setAlertBody:@"Hello world -BABYBYTE at count 10, Congrats "];
        [notification setFireDate:[NSDate dateWithTimeIntervalSinceNow:0]];
        [notification setTimeZone:[NSTimeZone  defaultTimeZone]];
        notification.soundName = UILocalNotificationDefaultSoundName;

        [[UIApplication sharedApplication] presentLocalNotificationNow:notification];
        //        [[UIApplication sharedApplication] setScheduledLocalNotifications:[NSArray arrayWithObject:notification]];
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
   
}


@end
