//
//  MVVMView.h
//  iOS架构
//
//  Created by butcher on 2017/10/13.
//  Copyright © 2017年 butcher. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MVVMViewModel.h"

@interface MVVMView : UIView

@property (strong, nonatomic) MVVMViewModel *vm;

- (void)setWithViewModel:(MVVMViewModel*)viewModel;
@end
