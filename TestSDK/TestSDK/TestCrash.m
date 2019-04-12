//
//  TestCrash.m
//  TestSDK
//
//  Created by whf on 2019/4/8.
//  Copyright © 2019年 whf5566. All rights reserved.
//

#import "TestCrash.h"



@implementation TestCrash

+ (void)ocException {
    NSString *key = nil;
    NSDictionary* dic = @{ key: @"value" };
    NSLog(@"%@",dic);
}

+ (void)illegalAccess {
    char* ptr = (char*)-1;
    *ptr = 1;
}


@end
