//
//  YYWaterflowLayout.m
//  YYCollectionViewWaterflowLayout
//
//  Created by marychen on 16/1/24.
//  Copyright © 2016年 CoderYY. All rights reserved.
//

#import "YYWaterflowLayout.h"

@interface YYWaterflowLayout()

/** 存储每一列最大的Y值 **/
@property (nonatomic, strong) NSMutableDictionary *maxYDict;
/** 存放所有的布局属性 **/
@property (nonatomic, strong) NSMutableArray *attrsArray;

@end
@implementation YYWaterflowLayout

- (instancetype)init{
    if (self == [super init]) {
        //默认
        self.columnMargin = 10;
        self.rowMargin = 10;
        self.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);
        self.columnsCount = 3;
    }
    return self;
}

- (NSMutableDictionary *)maxYDict{
    if(!_maxYDict){
        self.maxYDict = [[NSMutableDictionary alloc] init];
    }
    return _maxYDict;
}

- (NSMutableArray *)attrsArray{
    if(!_attrsArray){
        self.attrsArray = [[NSMutableArray alloc] init];
    }
    return _attrsArray;
}


- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds{
    return YES;
}


/**
 *  每次布局之前的准备
 */
- (void)prepareLayout{
    [super prepareLayout];
    
    //清空最大Y值
    for (int i = 0; i <self.columnsCount; i++) {
        NSString *column = [NSString stringWithFormat:@"%d", i];
        self.maxYDict[column] = @(self.sectionInset.top);
    }
    
    //计算所有cell的属性
    [self.attrsArray removeAllObjects];
    NSInteger count = [self.collectionView numberOfItemsInSection:0];
    for(int i = 0;i < count; i++){
        UICollectionViewLayoutAttributes *attrs = [self setupLayoutAttributeForItemAtIndexPath:[NSIndexPath indexPathForItem:i inSection:0]];
        [self.attrsArray addObject:attrs];
    }
}


/**
 *  返回rect范围内的布局属性
 */
- (NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect{
    return self.attrsArray;
}


/**
 *  返回当前Item布局属性
 */
- (UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath{
   return self.attrsArray[indexPath.row];
}


/**
 *  返回内容尺寸
 */
- (CGSize)collectionViewContentSize{
    __block NSString *maxColumn = @"0";
    [self.maxYDict enumerateKeysAndObjectsUsingBlock:^(NSString *column, NSNumber *maxY, BOOL * _Nonnull stop) {
        if ([maxY floatValue] > [self.maxYDict[maxColumn] floatValue]) {
            maxColumn = column;
        }
    }];
    return CGSizeMake(0, [self.maxYDict[maxColumn] floatValue] + self.sectionInset.bottom);
}


/**
 *  计算每一个Item的布局属性
 */
- (UICollectionViewLayoutAttributes *)setupLayoutAttributeForItemAtIndexPath:(NSIndexPath *)indexPath{
    //找出最短列
    __block NSString *minColumn = @"0";
    [self.maxYDict enumerateKeysAndObjectsUsingBlock:^(NSString *column, NSNumber *maxY, BOOL * _Nonnull stop) {
        if ([maxY floatValue] < [self.maxYDict[minColumn] floatValue]) {
            minColumn = column;
        }
    }];
    
    //计算尺寸
    CGFloat minColomnW = (self.collectionView.frame.size.width - self.sectionInset.left - self.sectionInset.right - (self.columnsCount - 1) * self.columnMargin) / self.columnsCount;
    CGFloat minColomnH = [self.delegate waterflowLayout:self heightForWidth:minColomnW atIndexPath:indexPath];
    
    //计算位置
    CGFloat minColomnX = self.sectionInset.left + [minColumn intValue] * (minColomnW + self.columnMargin);
    CGFloat minColomnY = [self.maxYDict[minColumn] floatValue] + self.rowMargin;
    
    //更新当前列的最大Y值
    self.maxYDict[minColumn] = @(minColomnY + minColomnH);
    
    UICollectionViewLayoutAttributes *attrs = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:indexPath];
    attrs.frame = CGRectMake(minColomnX, minColomnY, minColomnW, minColomnH);
    return attrs;
}

@end
