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
#import "BBHDataSingle.h"

@interface BBHViewController ()

@end

@implementation BBHViewController
{
    NSMutableDictionary *sampleText;
    UILabel *textGuide;
    
   
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        sampleText = [@{@"Shapes":@"Make shapes with fingers: Circle, Square, Triangle",
                        @"Animals":@"Make fun animal noises: Bird, Kitten, Puppy",
                        @"Baby":@"Point to baby's: Ears, Eyes, Nose",
                        @"Colors":@"Find colors in the room: Blue, Red, Green",
                        @"House":@"What's in the house: Door, Window, Floor",
                        @"People":@"Point to a picture of: Mother, Baby, Brother/Sister",
                        @"MealTime":@"Some foods we eat: Milk, Apple, Banana",
                        @"BathTime":@"Whats in the bath: Bubbles, Water, Ducky",
                        @"BedTime":@"What do we say for bedtime: Goodnight, Sleepy, Tired",
                        } mutableCopy];
        
        textGuide = [[UILabel alloc] initWithFrame:CGRectMake(10, self.navigationController.view.frame.origin.y+40, SCREEN_WIDTH, 100)];
        textGuide.textColor = [UIColor orangeColor];
        textGuide.font = [UIFont fontWithName:@"Helvetica" size:12];
        textGuide.text = sampleText[[BBHDataSingle mainSingleton].themes];
        
        [self.view addSubview:textGuide];
        
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
   }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}


@end
