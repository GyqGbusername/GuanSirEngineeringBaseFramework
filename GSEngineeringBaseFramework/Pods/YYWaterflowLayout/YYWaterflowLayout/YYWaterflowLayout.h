//
//  YYWaterflowLayout.h
//  YYCollectionViewWaterflowLayout
//
//  Created by marychen on 16/1/24.
//  Copyright © 2016年 CoderYY. All rights reserved.
//

@class YYWaterflowLayout;

@protocol YYWaterflowLayoutDelegate <NSObject>
/*
 * 返回当前Item的图片高度
 */
- (CGFloat)waterflowLayout:(YYWaterflowLayout *)waterflowLayout heightForWidth:(CGFloat)width atIndexPath:(NSIndexPath *)indexPath;

@end

@interface YYWaterflowLayout : UICollectionViewLayout

/** 边间距 **/
@property (nonatomic, assign) UIEdgeInsets sectionInset;

/** 列间距 **/
@property (nonatomic, assign) CGFloat columnMargin;

/** 行间距 **/
@property (nonatomic, assign) CGFloat rowMargin;

/** 总列数 **/
@property (nonatomic, assign) CGFloat columnsCount;

@property (nonatomic, weak) id<YYWaterflowLayoutDelegate> delegate;

@end
