//
//  MVVMView.m
//  iOS架构
//
//  Created by butcher on 2017/10/13.
//  Copyright © 2017年 butcher. All rights reserved.
//

#import "MVVMView.h"
#import "FBKVOController.h"
#import "NSObject+FBKVOController.h"

@interface MVVMView()

@property (strong, nonatomic) UILabel *labelContent;
@property (strong, nonatomic) UIButton *button;

@end

@implementation MVVMView

- (instancetype)init {
    if (self = [super init]) {
        
        self.backgroundColor = [UIColor greenColor];
        
        _labelContent = [[UILabel alloc] init];
        _labelContent.frame = CGRectMake(50, 100, 300, 30);
        _labelContent.textColor = [UIColor blackColor];
        _labelContent.textAlignment = NSTextAlignmentCenter;
        [self addSubview:_labelContent];
        
        _button = [UIButton new];
        _button.frame = CGRectMake(100, 200, 100, 50);
        [_button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_button setTitle:@"打印MVP" forState:UIControlStateNormal];
        [_button addTarget:self action:@selector(onPrintClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_button];
    }
    
    return self;
}

- (void)onPrintClick {
    
    [_vm viewModelPrintClink];
}

- (void)setWithViewModel:(MVVMViewModel*)viewModel {
    self.vm = viewModel;
    
    [self.KVOController observe:viewModel keyPath:@"contentString" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionInitial block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSKeyValueChangeKey,id> * _Nonnull change) {
        _labelContent.text = change[NSKeyValueChangeNewKey];
    }];
}


@end
