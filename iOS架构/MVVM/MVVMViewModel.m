//
//  MVVMViewModel.m
//  iOS架构
//
//  Created by butcher on 2017/10/13.
//  Copyright © 2017年 butcher. All rights reserved.
//

#import "MVVMViewModel.h"
#import "FBKVOController.h"
@interface MVVMViewModel()

@property (strong, nonatomic) MVVMModel *model;
@end;
@implementation MVVMViewModel

- (void)viewModelPrintClink {
    NSInteger num = arc4random_uniform(1000);
    _model.content = [NSString stringWithFormat:@"MVVM---%ld---",num];
    self.contentString = _model.content;
}

- (void)setWithModel:(MVVMModel*)model {
    _model = model;
    self.contentString = _model.content;
}

@end
