//
//  ViewController.m
//  runtimeTest
//
//  Created by Monstar on 16/8/1.
//  Copyright © 2016年 Monstar. All rights reserved.
//

#import "ViewController.h"
#import "MediatorVC.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}
- (IBAction)goFirst:(id)sender {
  
    UIViewController *vc =[[MediatorVC sharedInstance]gotofirstVC:@"2"];
    
    
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)goSecond:(id)sender {
    UIViewController *vc = [[MediatorVC sharedInstance]gotosecondVC:@"1"];
    [self.navigationController pushViewController:vc animated:YES];
}


@end
