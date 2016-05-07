//
//  GSUserInfoModel.h
//  GSEngineeringBaseFramework
//
//  Created by 关宇琼 on 16/5/6.
//  Copyright © 2016年 GuanSir. All rights reserved.
//

#import "GSBaseModel.h"

@interface GSUserInfoModel : GSBaseModel


@property (nonatomic ,copy) NSString *AddDate;
@property (nonatomic ,copy) NSString *Address;
@property (nonatomic ,copy) NSString *CityId;
@property (nonatomic ,copy) NSString *CityName;
@property (nonatomic ,copy) NSString *DistrictId;

@property (nonatomic ,copy) NSString *user_Id;
@property (nonatomic ,copy) NSString *IdNumber;
@property (nonatomic ,copy) NSString *Img;
@property (nonatomic ,copy) NSString *Mobile;
@property (nonatomic ,copy) NSString *Name;

@property (nonatomic ,copy) NSString *ProvincialId;
@property (nonatomic ,copy) NSString *ProvincialName;
@property (nonatomic ,copy) NSString *Pwd;
@property (nonatomic ,copy) NSString *Url;

//@property (nonatomic ,copy) NSString *date;
//@property (nonatomic ,copy) NSString *address;
//@property (nonatomic ,copy) NSString *city;
//@property (nonatomic ,copy) NSString *user_Id;
//@property (nonatomic ,copy) NSString *img;
//@property (nonatomic ,copy) NSString *mobile;
//@property (nonatomic ,copy) NSString *username;
//@property (nonatomic ,copy) NSString *pwd;
//@property (nonatomic, copy) NSString *token;

- (instancetype)initWithDic:(NSDictionary *)dic;

@end
