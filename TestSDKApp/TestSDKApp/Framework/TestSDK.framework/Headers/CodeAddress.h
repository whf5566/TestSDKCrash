//
//  CodeAddress.h
//  TestSDK
//
//  Created by whf on 2019/4/8.
//  Copyright © 2019年 whf5566. All rights reserved.
//

#ifndef CodeAddress_h
#define CodeAddress_h


#if __cplusplus
extern "C" {
#endif
    
    extern void * getSDKStartAddress(void);
    extern void * getSDKEndAddress(void);
    extern long getExecuteImageSlide(void);
    
#if __cplusplus
}
#endif


#endif /* CodeAddress_h */
