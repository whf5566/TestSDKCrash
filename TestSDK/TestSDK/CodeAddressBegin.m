//
//  CodeTextBegin.m
//  TestSDK
//
//  Created by whf on 2019/4/8.
//  Copyright © 2019年 whf5566. All rights reserved.
//


#import "CodeAddress.h"
#import <mach-o/dyld.h>

extern void * getSDKStartAddress(void) {
    return &getSDKStartAddress;
}



extern long getExecuteImageSlide(void) {
    long slide = -1;
    for (uint32_t i = 0; i < _dyld_image_count(); i++) {
        if (_dyld_get_image_header(i)->filetype == MH_EXECUTE) {
            slide = _dyld_get_image_vmaddr_slide(i);
            break;
        }
    }
    return slide;
}
