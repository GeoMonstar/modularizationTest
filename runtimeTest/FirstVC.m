//
//  FirstVC.m
//  runtimeTest
//
//  Created by Monstar on 16/8/1.
//  Copyright © 2016年 Monstar. All rights reserved.
//

#import "FirstVC.h"
#import "MediatorVC.h"
@interface FirstVC ()

@end

@implementation FirstVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 100, 100);
    [button setTitle:@"goSecond" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(gotoSecond:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}
- (void)gotoSecond:(UIButton *)sender{
    UIViewController *vc =  [[MediatorVC sharedInstance]gotosecondVC:@"2"];
    [self.navigationController pushViewController:vc animated:YES];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
