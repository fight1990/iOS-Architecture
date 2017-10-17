//
//  MVCViewController.m
//  iOS架构
//
//  Created by butcher on 2017/10/13.
//  Copyright © 2017年 butcher. All rights reserved.
//

#import "MVCViewController.h"
#import "MVCView.h"
#import "MVCModel.h"

@interface MVCViewController ()<MVCViewDelegate>

@property (strong, nonatomic) MVCView *mvcView;
@property (strong, nonatomic) MVCModel *mvcModel;

@end

@implementation MVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _mvcView = [MVCView new];
    _mvcView.frame = self.view.bounds;
    _mvcView.delegate = self;
    [self.view addSubview: _mvcView];
    
    _mvcModel = [MVCModel new];
    _mvcModel.content = @"我是MVC架构模式！";
    
    [self printModel];
}

- (void)printModel {
    [_mvcView printOnView:_mvcModel];
}

- (void)onPrintBtnClick {
    NSInteger num = arc4random_uniform(10);
    _mvcModel.content = [NSString stringWithFormat:@"MVC---%ld---",num];
    
    [self printModel];
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
