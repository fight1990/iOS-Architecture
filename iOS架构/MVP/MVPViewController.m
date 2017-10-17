//
//  MVPViewController.m
//  iOS架构
//
//  Created by butcher on 2017/10/13.
//  Copyright © 2017年 butcher. All rights reserved.
//

#import "MVPViewController.h"
#import "Presenter.h"
#import "MVPView.h"
#import "MVPModel.h"

@interface MVPViewController ()

@property (strong, nonatomic) MVPView *mvpView;
@property (strong, nonatomic) MVPModel *mvpModel;
@property (strong, nonatomic) Presenter *presenter;

@end

@implementation MVPViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _mvpView = [[MVPView alloc] init];
    _mvpView.frame = self.view.bounds;
    [self.view addSubview:_mvpView];
    
    _mvpModel = [[MVPModel alloc] init];
    _mvpModel.content = @"这里是MVP架构模式！";
    
    _presenter = [[Presenter alloc] init];
    _presenter.view = _mvpView;
    _presenter.model = _mvpModel;
    
    _mvpView.delegate = _presenter;

}

- (void)printModel {
    [_presenter printTask];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
