//
//  FirstComponent.m
//  runtimeTest
//
//  Created by Monstar on 16/8/1.
//  Copyright © 2016年 Monstar. All rights reserved.
//

#import "FirstComponent.h"
#import "FirstVC.h"
@implementation FirstComponent
- (UIViewController *)gotoSecond:(NSString *)vcId{
    FirstVC *vc = [[FirstVC alloc]init];
    return vc;
}
@end
