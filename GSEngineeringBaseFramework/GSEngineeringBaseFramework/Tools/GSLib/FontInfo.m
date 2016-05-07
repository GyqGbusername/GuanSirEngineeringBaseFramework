//
//  FontInfo.m
//  GSEngineeringBaseFramework
//
//  Created by 关宇琼 on 16/5/6.
//  Copyright © 2016年 GuanSir. All rights reserved.
//

#import "FontInfo.h"

@interface FontInfo ()


@end

@implementation FontInfo


static FontInfo *sharedFontInfo = nil;

+ (FontInfo *)sharedFontInfo
{
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        sharedFontInfo = [[self alloc] init];
    });
    return sharedFontInfo;
}


- (instancetype)init
{
    self = [super init];
    
    if (self) {
        if (IS_IPHONE) {
            if (IPHONE4 || IPHONE5) {
                self.ordinaryFontNum = 14.0f;
                self.titleFontNum = 20.0f;
                self.introFontNum = 12.0f;
            } else {
                self.ordinaryFontNum = 16.0f;
                self.titleFontNum = 22.0f;
                self.introFontNum = 13.0f;
            }
        } else if (IS_IPAD) {
            self.ordinaryFontNum = 18.0f;
            self.titleFontNum = 28.0f;
            self.introFontNum = 15.0f;
        } else {
            self.ordinaryFontNum = 15.0f;
            self.titleFontNum = 22.0f;
            self.introFontNum = 13.0f;
        }
    }
    
    return self;
}


@end
