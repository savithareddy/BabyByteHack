//
//  MMRViewControllerVC.m
//  Memories
//
//  Created by Savitha Reddy on 7/4/14.
//  Copyright (c) 2014 Savitha. All rights reserved.
//

#import "BBHCollectionVC.h"
#import "BBHCell.h"
#import "BBHViewController.h"
#import "BBHDataSingle.h"

@interface BBHCollectionVC () <UICollectionViewDelegateFlowLayout,UICollectionViewDataSource>

@end

@implementation BBHCollectionVC
{
    NSArray *photos;
    NSArray *themeName;
    UIBarButtonItem *back;
    
}

-(id)initWithCollectionViewLayout:(UICollectionViewFlowLayout *)layout
{
    self = [super initWithCollectionViewLayout:layout];
    if(self)
    {
        self.collectionView.backgroundColor = [UIColor whiteColor];
        self.navigationController.navigationBarHidden = YES;
//     self.view.frame = CGRectMake(10, 10,SCREEN_WIDTH-10,SCREEN_HEIGHT-10);
        
        self.navigationItem.title = @"Themes";

        
        [self.collectionView registerClass:[BBHCell class] forCellWithReuseIdentifier:@"cell"];
             self.collectionView.contentInset = UIEdgeInsetsMake(100, 0, 0, 0);
//                layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        layout.scrollDirection = UICollectionViewScrollDirectionVertical;
        
        photos = @[@"shapes.png",@"animals.png",@"baby.png",@"colors.png",@"house.png",@"people.png",@"mealtime.png",@"bathtime.png",@"bedtime.png"];
        
        themeName = @[@"Shapes",@"Animals",@"Baby",@"Colors",@"House",@"People",@"MealTime",@"BathTime",@"BedTime"];
        
        self.collectionView.delegate = self;
        self.collectionView.dataSource = self;
        
        UIBarButtonItem *backButtonNav = [[UIBarButtonItem alloc] initWithTitle:@"BACK" style:UIBarButtonItemStyleBordered target:self action:@selector(goCollection)];
        backButtonNav.tintColor = [UIColor blueColor];
            self.navigationController.navigationBarHidden = NO;

    }
    return self;
}

-(void)goCollection
{
    [self.navigationController popViewControllerAnimated:YES];
    
}


-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(100, 100);
}

-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 10.0;
}

-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 30.0;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [photos count];
}

-(BBHCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    BBHCell *cell = (BBHCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];

//    cell.frame = CGRectMake(0, 50, 320, SCREEN_HEIGHT);
    [cell.layer setCornerRadius : 45.0];
    
    
    cell.namePicture.text = themeName[indexPath.row];
    cell.imagePicture.image =[UIImage imageNamed:photos[indexPath.row]];
    cell.imagePicture.center = CGPointMake(cell.frame.size.width/2, (cell.frame.size.height-20)/2);
    
    return cell;
}


- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
     self.pageIndex = indexPath.row;
    [BBHDataSingle mainSingleton].themes = themeName[indexPath.row];
    BBHViewController  *viewVC = [[BBHViewController alloc] init];
    [self.navigationController pushViewController:viewVC animated:NO];

    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    

self.automaticallyAdjustsScrollViewInsets = NO;
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}


@end


