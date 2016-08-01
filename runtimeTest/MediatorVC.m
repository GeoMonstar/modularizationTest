//
//  MediatorVC.m
//  runtimeTest
//
//  Created by Monstar on 16/8/1.
//  Copyright © 2016年 Monstar. All rights reserved.
//

#import "MediatorVC.h"

@interface MediatorVC ()

@end

@implementation MediatorVC
+ (instancetype)sharedInstance{
    static MediatorVC * mediatorVC;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mediatorVC = [[MediatorVC alloc]init];
    });
    return mediatorVC;
}

- (UIViewController *)gotofirstVC:(NSString *)firstId{
    Class cls = NSClassFromString(@"FirstComponent");
    id target = [[cls alloc] init];
    return [target performSelector:NSSelectorFromString(@"gotoSecond:") withObject:@{@"vcid":firstId}];
    
}
- (UIViewController *)gotosecondVC:(NSString *)secondId{
    Class cls = NSClassFromString(@"SecondComponent");
    id target = [[cls alloc] init];
    return [target performSelector:NSSelectorFromString(@"gotoFirstVC:") withObject:@{@"vcid":secondId}];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
