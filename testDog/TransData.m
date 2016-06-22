//
//  TransData.m
//  testDog
//
//  Created by Evan on 2016/6/22.
//  Copyright © 2016年 Evan. All rights reserved.
//

#import "TransData.h"

@implementation TransData
+(NSArray *)transData:(NSData *)data
{
    NSError *error = nil;
    id jsonArray = [NSJSONSerialization JSONObjectWithData: data options: NSJSONReadingMutableContainers error: &error];
    return jsonArray;
}
@end
