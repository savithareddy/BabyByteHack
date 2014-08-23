//
//  SPGAddItemVC.m
//  ShopPING
//
//  Created by Savitha Reddy on 6/6/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import "BBHBabyProfile.h"
#import "BBHCollectionVC.h"

@interface BBHBabyProfile () <UITextFieldDelegate,UIPickerViewDelegate,UIPickerViewDataSource>

@end

@implementation BBHBabyProfile
{
    UIView *addFrame;
    UITextField *addName;
    UITextField *addDob;
    UIDatePicker *myPickerView;
    UIButton *registerBaby;
    UIButton *cancelBaby;
    NSArray *metric;
    
}

#pragma mark - Create Add Form
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.view.backgroundColor = [UIColor whiteColor];
        addFrame = [[UIView alloc] initWithFrame:CGRectMake(20, 140, 280, 260)];
//        self.addFrame.backgroundColor = [UIColor yellowColor];
        [self.view addSubview:addFrame];
        
        addName = [[UITextField alloc] initWithFrame:CGRectMake(10, 10, 260, 40)];
        addName.backgroundColor = [UIColor colorWithWhite:0.95 alpha:0.0];
        UIView *lineView1 = [[UIView alloc]initWithFrame:CGRectMake(10, 38, 260,2)];
        lineView1.backgroundColor = [UIColor lightGrayColor];
        [addFrame addSubview:lineView1];
        addName.delegate = self;
        addName.font = [UIFont fontWithName:@"Helvetica Neue Light" size:12];
        addName.clearsOnBeginEditing = YES;
        addName.autocapitalizationType = UITextAutocapitalizationTypeNone;
        addName.autocorrectionType = UITextAutocorrectionTypeNo;
        [addFrame addSubview:addName];
        
        UIView *metricView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 216)];
        myPickerView = [[UIDatePicker alloc] initWithFrame:CGRectMake(0, 0, 320, 216)];
//        myPickerView.delegate = self;
//        myPickerView.dataSource = self;
//        myPickerView.showsSelectionIndicator = YES;
        [metricView addSubview:myPickerView];
        
        addDob = [[UITextField alloc] initWithFrame:CGRectMake(60, 100, 210, 40)];
        addDob.backgroundColor = [UIColor colorWithWhite:0.95 alpha:0.0];
        UIView *lineView4 = [[UIView alloc]initWithFrame:CGRectMake(60, 128, 210,2)];
        lineView4.backgroundColor = [UIColor lightGrayColor];
        [addDob addSubview:lineView4];
        addDob.font = [UIFont fontWithName:@"Helvetica Neue Light" size:12];
        addDob.clearsOnBeginEditing = YES;
//        self.addMetric.delegate=self;
        addDob.inputView = myPickerView;
        [addFrame addSubview:addDob];
        
        registerBaby = [[UIButton alloc] initWithFrame:CGRectMake(10, 150, 260, 44)];
        registerBaby.backgroundColor = [UIColor colorWithRed:0.0 green:0.7 blue:0.3 alpha:0.7];
        registerBaby.layer.cornerRadius = 5;
        [registerBaby setTitle:@"REGISTER" forState:UIControlStateNormal];
        [registerBaby addTarget:self action:@selector(openCollectionVC) forControlEvents:UIControlEventTouchUpInside];
        [addFrame addSubview:registerBaby];
        
        cancelBaby = [[UIButton alloc] initWithFrame:CGRectMake(10, 200, 260, 44)];
        cancelBaby.backgroundColor = [UIColor colorWithRed:0.0 green:0.7 blue:0.3 alpha:0.7];
        cancelBaby.layer.cornerRadius = 5;
        [cancelBaby setTitle:@"CANCEL" forState:UIControlStateNormal];
        [cancelBaby addTarget:self action:@selector(openCollectionVC) forControlEvents:UIControlEventTouchUpInside];
        [addFrame addSubview:cancelBaby];
       
    }
    return self;
}

-(void) openCollectionVC
{
    BBHCollectionVC *collectionVC = [[BBHCollectionVC alloc] initWithCollectionViewLayout:[[UICollectionViewFlowLayout alloc] init]];
    [self.navigationController pushViewController:collectionVC animated:YES];
    
}

//#pragma mark - Metric Picker Methods
//- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
//{
//    return 1;
//}
//
//
//- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
//{
//    return metric.count;
//}
//
//- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
//{
//    return [metric objectAtIndex:row];
//}
//
//- (void)pickerView:(UIPickerView *)pickerView didSelectRow: (NSInteger)row inComponent:(NSInteger)component {
//   self.addMetric.text = (NSString *)[metric objectAtIndex:row];
//}
//

-(void) hideKeyboard
{
    [self.view endEditing:YES];
    [UIView animateWithDuration:0.3 animations:^{
        addFrame.frame = CGRectMake(20, 140, 280, 260);
        
    }];
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    [UIView animateWithDuration:0.3 animations:^{
        addFrame.frame = CGRectMake(20, 140, 280, 260);
    }];
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    addName.textColor = [UIColor blackColor];
    addDob.textColor = [UIColor blackColor];
    int extraSlide = -1;
    [UIView animateWithDuration:0.3 animations:^{
        addFrame.frame = CGRectMake(20, extraSlide+100, 280, 260);

    }];
}


- (void)viewWillAppear:(BOOL)animated
{
//    [super viewDidLoad];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


@end
