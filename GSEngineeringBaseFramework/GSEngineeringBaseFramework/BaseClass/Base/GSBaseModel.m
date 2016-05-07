//
//  GSBaseModel.m
//  GSEngineeringBaseFramework
//
//  Created by 关宇琼 on 16/5/6.
//  Copyright © 2016年 GuanSir. All rights reserved.
//

#import "GSBaseModel.h"

@implementation GSBaseModel

- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
    
}

+ (id)modelWithDictionary:(NSDictionary *)dic {
    
    __strong Class model = [[[self class] alloc] init];
  
    [model setValuesForKeysWithDictionary:dic];
    
    return model;
}


@end
