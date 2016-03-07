//
//  ViewController.m
//  集合视图
//
//  Created by wan on 16/3/6.
//  Copyright © 2016年 wan. All rights reserved.
//

#import "ViewController.h"
#import "WMCollectionViewFlowLayout.h"

static NSString *const cellId = @"UICollectionViewCell";

@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>


@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect frame  = CGRectMake(0, 200, self.view.frame.size.width, 200);
    
    //布局不能写成UICollectionViewLayout
    WMCollectionViewFlowLayout *layout = [[WMCollectionViewFlowLayout alloc] init];
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    layout.itemSize = CGSizeMake(100, 100);
    UICollectionView *uiCollectionView = [[UICollectionView alloc] initWithFrame:frame collectionViewLayout: layout];

    
    uiCollectionView.dataSource = self;
    uiCollectionView.delegate = self;

    [self.view addSubview:uiCollectionView];
    
    [uiCollectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:cellId];

}



-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 50;
}

-( void )collectionView:( UICollectionView *)collectionView didSelectItemAtIndexPath:( NSIndexPath *)indexPath

{
    
    UICollectionViewCell * cell = ( UICollectionViewCell *)[collectionView cellForItemAtIndexPath :indexPath];
    
    cell. backgroundColor = [ UIColor colorWithRed :(( arc4random ()% 255 )/ 255.0 ) green :(( arc4random ()% 255 )/ 255.0 ) blue :(( arc4random ()% 255 )/ 255.0 ) alpha : 1.0f ];
    
}

-( UICollectionViewCell *)collectionView:( UICollectionView *)collectionView cellForItemAtIndexPath:( NSIndexPath *)indexPath

{
    UICollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier :cellId forIndexPath :indexPath];
    
    cell. backgroundColor = [ UIColor colorWithRed :(( arc4random ()% 255 )/ 255.0 ) green :(( arc4random ()% 255 )/ 255.0 ) blue :(( arc4random ()% 255 )/ 255.0 ) alpha : 1.0f ];

    return cell;
    
}

//-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
//{
//    
//    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellId forIndexPath:indexPath];
//    cell.backgroundColor = [UIColor orangeColor];
//    
//    return cell;
//    
//}

//-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
//{
//    return CGSizeMake(100 ,100);
//}

@end
