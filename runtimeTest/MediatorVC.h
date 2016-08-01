//
//  MediatorVC.h
//  runtimeTest
//
//  Created by Monstar on 16/8/1.
//  Copyright © 2016年 Monstar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MediatorVC : UIViewController

+ (instancetype)sharedInstance;


- (UIViewController *)gotofirstVC:(NSString *)firstId;


- (UIViewController *)gotosecondVC:(NSString *)secondId;
@end
