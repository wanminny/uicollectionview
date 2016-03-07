//
//  WMCollectionViewFlowLayout.m
//  集合视图
//
//  Created by wan on 16/3/6.
//  Copyright © 2016年 wan. All rights reserved.
//

#import "WMCollectionViewFlowLayout.h"

@implementation WMCollectionViewFlowLayout

- (instancetype)init
{
    if(self = [super init])
    {
        
    }
    return self;
    
}


- (NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect
{
    NSArray * arr = [super layoutAttributesForElementsInRect:rect];
    
//    arc4random_uniform(<#u_int32_t#>)
    for (UICollectionViewLayoutAttributes* element in arr) {
        
//        element.transform = CGAffineTransformMakeScale(arc4random()%2, arc4random()%2);
        
//        NSLog(@"%@",element);
    }
    
    return arr;
}

@end
