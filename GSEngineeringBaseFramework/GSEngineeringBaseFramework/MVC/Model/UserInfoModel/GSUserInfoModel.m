//
//  GSUserInfoModel.m
//  GSEngineeringBaseFramework
//
//  Created by 关宇琼 on 16/5/6.
//  Copyright © 2016年 GuanSir. All rights reserved.
//

#import "GSUserInfoModel.h"

@implementation GSUserInfoModel


- (instancetype)initWithDic:(NSDictionary *)dic
{
    if (!self) {
        self = [[GSUserInfoModel alloc] init];
    }
    self.AddDate        = [MJYUtils mjy_fuckNULL:dic[@"AddDate"]];
    self.Address        = [MJYUtils mjy_fuckNULL:dic[@"Address"]];
    self.CityId         = [MJYUtils mjy_fuckNULL:dic[@"CityId"]];
    self.CityName       = [MJYUtils mjy_fuckNULL:dic[@"CityName"]];
    self.DistrictId     = [MJYUtils mjy_fuckNULL:dic[@"DistrictId"]];
    
    self.user_Id        = [MJYUtils mjy_fuckNULL:dic[@"Id"]];
    self.IdNumber       = [MJYUtils mjy_fuckNULL:dic[@"IdNumber"]];
    self.Img            = [MJYUtils mjy_fuckNULL:dic[@"Img"]];
    self.Mobile         = [MJYUtils mjy_fuckNULL:dic[@"Mobile"]];
    self.Name           = [MJYUtils mjy_fuckNULL:dic[@"Name"]];
    
    self.ProvincialId   = [MJYUtils mjy_fuckNULL:dic[@"ProvincialId"]];
    self.ProvincialName = [MJYUtils mjy_fuckNULL:dic[@"ProvincialName"]];
    self.Pwd            = [MJYUtils mjy_fuckNULL:dic[@"Pwd"]];
    self.Url            = [MJYUtils mjy_fuckNULL:dic[@"Url"]];
    
//    self.date        = [MJYUtils mjy_fuckNULL:dic[@"date"]];
//    self.address        = [MJYUtils mjy_fuckNULL:dic[@"address"]];
//    self.city         = [MJYUtils mjy_fuckNULL:dic[@"city"]];
//    self.user_Id       = [MJYUtils mjy_fuckNULL:dic[@"user_Id"]];
//    self.username     = [MJYUtils mjy_fuckNULL:dic[@"username"]];
//    self.mobile        = [MJYUtils mjy_fuckNULL:dic[@"mobile"]];
//    self.pwd       = [MJYUtils mjy_fuckNULL:dic[@"pwd"]];
//    self.img            = [MJYUtils mjy_fuckNULL:dic[@"img"]];
//    self.token         = [MJYUtils mjy_fuckNULL:dic[@"token"]];

    return self;
}



@end
