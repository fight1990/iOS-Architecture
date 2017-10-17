//
//  MVCView.m
//  iOS架构
//
//  Created by butcher on 2017/10/13.
//  Copyright © 2017年 butcher. All rights reserved.
//

#import "MVCView.h"

@interface MVCView()

@property (strong, nonatomic) UIButton *button;

@end

@implementation MVCView

- (instancetype)init {
    if (self = [super init]) {
        self.backgroundColor = [UIColor lightGrayColor];
        
        _button = [UIButton new];
        _button.frame = CGRectMake(100, 100, 100, 50);
        [_button setTitle:@"打印MVC" forState:UIControlStateNormal];
        [_button addTarget:self action:@selector(onPrintClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_button];
    }
    
    return self;
}

- (void)onPrintClick {
    if (_delegate) {
        [_delegate onPrintBtnClick];
    }
}

- (void)printOnView:(MVCModel*)model {
    NSLog(@"过来了没有：%@",model.content);
}


@end
