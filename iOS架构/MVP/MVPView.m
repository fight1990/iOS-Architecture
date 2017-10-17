//
//  MVPView.m
//  iOS架构
//
//  Created by butcher on 2017/10/13.
//  Copyright © 2017年 butcher. All rights reserved.
//

#import "MVPView.h"

@interface MVPView()

@property (strong, nonatomic) UILabel *labelContent;
@property (strong, nonatomic) UIButton *button;

@end

@implementation MVPView

- (instancetype)init {
    if (self = [super init]) {
        
        self.backgroundColor = [UIColor yellowColor];
        
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
    if (_delegate) {
        [_delegate onPrintBtnClick];
    }
}

- (void)printOnView:(NSString*)content {
    
    _labelContent.text = content;
}

@end
