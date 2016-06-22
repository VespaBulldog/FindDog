//
//  animalData.m
//  testDog
//
//  Created by Evan on 2016/6/22.
//  Copyright © 2016年 Evan. All rights reserved.
//

#import "animalData.h"

@implementation animalData
-(instancetype)initWithData:(animalData *)data
{
    if (self = [super init])
    {
        self.album_file = data.album_file ? data.album_file : @"";
        self.animal_age = data.animal_age ? data.animal_age : @"";
        self.animal_bacterin = data.animal_bacterin;
    }

    return self;
}
/*
 //照片
 @property (nonatomic, strong) NSString *album_file;
 //年紀
 @property (nonatomic, strong) NSString *animal_age;
 //是否施打狂犬病疫苗
 @property (nonatomic, assign) BOOL *animal_bacterin;
 //體型
 @property (nonatomic, strong) NSString *animal_bodytype;
 //開放認養時間（起）
 @property (nonatomic, strong) NSString *animal_opendate;
 //開放認養時間（迄）
 @property (nonatomic, strong) NSString *animal_closeddate;
 //花色
 @property (nonatomic, strong) NSString *animal_colour;
 //資料建立時間
 @property (nonatomic, strong) NSString *animal_createtime;
 //id
 @property (nonatomic, strong) NSString *animal_id;
 //種類[貓 | 狗 | 鳥
 @property (nonatomic, strong) NSString *animal_kind;
 //動物的實際所在地
 @property (nonatomic, strong) NSString *animal_place;
 //動物尋獲地
 @property (nonatomic, strong) NSString *animal_foundplace;
 //資料備註
 @property (nonatomic, strong) NSString *animal_remark;
 //動物所屬收容所代碼
 @property (nonatomic, strong) NSNumber *animal_shelter_pkid;
 //動物狀態 NONE | OPEN | ADOPTED | OTHER | DEAD](未公告、開放認養、已認養、其他、死亡
 @property (nonatomic, strong) NSString *animal_status;
 //是否絕育
 @property (nonatomic, strong) NSString *animal_sterilization;
 //動物的區域編號
 @property (nonatomic, strong) NSString *animal_subid;
 //動物資料異動時間
 @property (nonatomic, strong) NSString *animal_update;
 //資料更新時間
 @property (nonatomic, strong) NSString *cDate;
 //地址
 @property (nonatomic, strong) NSString *shelter_address;
 //連絡電話
 @property (nonatomic, strong) NSString *shelter_tel;
 //動物所屬收容所名稱
 @property (nonatomic, strong) NSString *shelter_name;

 */
@end
