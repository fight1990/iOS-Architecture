//
//  Presenter.m
//  iOS架构
//
//  Created by butcher on 2017/10/13.
//  Copyright © 2017年 butcher. All rights reserved.
//

#import "Presenter.h"

@implementation Presenter

- (void)printTask {
    
    NSString *printContent = _model.content;
    
    [_view printOnView:printContent];
}

- (void)onPrintBtnClick {
    NSInteger num = arc4random_uniform(100);
    _model.content = [NSString stringWithFormat:@"MVP---%ld---",num];
    
    [self printTask];
}
@end
