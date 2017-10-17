//
//  ViewController.m
//  iOS架构
//
//  Created by butcher on 2017/10/13.
//  Copyright © 2017年 butcher. All rights reserved.
//

#import "ViewController.h"
#import "MVCViewController.h"
#import "MVPViewController.h"
#import "MVVMViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [self showMVC];
//        [self showMVP];
        [self showMVVM];
    });
    
    
}

- (void)showMVC {
    MVCViewController *vc = [[MVCViewController alloc] init];
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)showMVP {
    MVPViewController *vc = [[MVPViewController alloc] init];
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)showMVVM {
    MVVMViewController *vc = [[MVVMViewController alloc] init];
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
