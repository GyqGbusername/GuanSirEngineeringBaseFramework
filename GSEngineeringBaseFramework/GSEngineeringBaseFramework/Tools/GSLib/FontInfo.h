//
//  FontInfo.h
//  GSEngineeringBaseFramework
//
//  Created by 关宇琼 on 16/5/6.
//  Copyright © 2016年 GuanSir. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FontInfo : NSObject


@property (nonatomic, assign) CGFloat ordinaryFontNum;
@property (nonatomic, assign) CGFloat titleFontNum;
@property (nonatomic, assign) CGFloat introFontNum;


+ (FontInfo *)sharedFontInfo;

@end
