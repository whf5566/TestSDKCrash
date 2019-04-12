//
//  ViewController.m
//  TestSDKApp
//
//  Created by whf on 2019/4/8.
//  Copyright © 2019年 whf5566. All rights reserved.
//

#import "ViewController.h"
#import <TestSDK/TestCrash.h>
#import <TestSDK/CodeAddress.h>
#import <TestSDK/Masonry.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.title = @"Test";
    self.view.backgroundColor = UIColor.whiteColor;
    
    
    NSLog(@"sdk start: %p end: %p", getSDKStartAddress(), getSDKEndAddress());
    long slide = getExecuteImageSlide();
    NSLog(@"sdk start: %p end: %p", getSDKStartAddress() - slide, getSDKEndAddress() - slide);
}


- (IBAction)onClickSDK1:(id)sender {
    NSLog(@"%s", __FUNCTION__);
    
    [TestCrash ocException];
}


- (IBAction)onClickSDK2:(id)sender {
    NSLog(@"%s", __FUNCTION__);
    
    [TestCrash illegalAccess];
}


- (IBAction)onClickApp1:(id)sender {
    NSLog(@"%s", __FUNCTION__);
    
    NSString *key = nil;
    NSDictionary* dic = @{ key: @"value" };
    NSLog(@"%@",dic);    
}


- (IBAction)onClickApp2:(id)sender {
    NSLog(@"%s", __FUNCTION__);
    
    char* ptr = (char*)-1;
    *ptr = 1;
}


@end
