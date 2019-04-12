//
//  TestCrash.h
//  TestSDK
//
//  Created by whf on 2019/4/8.
//  Copyright © 2019年 whf5566. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TestCrash : NSObject

+ (void)ocException;
+ (void)illegalAccess;

@end

NS_ASSUME_NONNULL_END
