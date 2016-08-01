//
//  SecondComponent.m
//  runtimeTest
//
//  Created by Monstar on 16/8/1.
//  Copyright © 2016年 Monstar. All rights reserved.
//

#import "SecondComponent.h"
#import "SecondVC.h"
@implementation SecondComponent
- (UIViewController *)gotoFirstVC:(NSString *)vcId{

    SecondVC *vc = [[SecondVC alloc]init];
    return vc;
}

@end
