//
//  GSBaseTableViewCell.m
//  GSEngineeringBaseFramework
//
//  Created by 关宇琼 on 16/5/6.
//  Copyright © 2016年 GuanSir. All rights reserved.
//

#import "GSBaseTableViewCell.h"
#import "GSBaseModel.h"

@implementation GSBaseTableViewCell

- (void)setGsBaseModel:(GSBaseModel *)gsBaseModel {
    if (_gsBaseModel != gsBaseModel) {
        _gsBaseModel = gsBaseModel;
    }
}

@end
