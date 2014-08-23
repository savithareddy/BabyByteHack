//
//  BBHViewController.m
//  BabyByteHack
//
//  Created by Savitha Reddy on 8/23/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import "BBHViewController.h"
#import "BBHViewCircle.h"
#import <QuartzCore/QuartzCore.h>

@interface BBHViewController ()

@end

@implementation BBHViewController
{
    BBHViewCircle *view;
   
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
//    self.view.backgroundColor = [UIColor lightGrayColor];
    view = [[BBHViewCircle alloc] initWithFrame:CGRectMake(0, 0, 320, SCREEN_HEIGHT)];
//    view.tintColor = [UIColor blackColor];
//            WithFrame:CGRectMake(0, 0,SCREEN_WIDTH, SCREEN_HEIGHT)];
    [self.view  addSubview:view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}






/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
