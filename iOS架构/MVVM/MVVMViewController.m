//
//  MVVMViewController.m
//  iOS架构
//
//  Created by butcher on 2017/10/13.
//  Copyright © 2017年 butcher. All rights reserved.
//

#import "MVVMViewController.h"
#import "MVVMView.h"
#import "MVVMModel.h"
#import "MVVMViewModel.h"

@interface MVVMViewController ()

@property (strong, nonatomic) MVVMView *mvvmView;
@property (strong, nonatomic) MVVMModel *mvvmModel;
@property (strong, nonatomic) MVVMViewModel *viewModel;

@end

@implementation MVVMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _mvvmModel = [[MVVMModel alloc] init];
    _mvvmModel.content = @"MVVM架构模式！";
    
    _mvvmView = [[MVVMView alloc] init];
    _mvvmView.frame = self.view.bounds;
    [self.view addSubview:_mvvmView];
    
    _viewModel = [[MVVMViewModel alloc] init];

    /**
     * 注： ViewModel赋值Model在前,MVVMView赋值ViewModel在后
     */
    [_viewModel setWithModel:_mvvmModel];
    [_mvvmView setWithViewModel:_viewModel];
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
