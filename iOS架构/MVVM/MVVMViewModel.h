//
//  MVVMViewModel.h
//  iOS架构
//
//  Created by butcher on 2017/10/13.
//  Copyright © 2017年 butcher. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVVMModel.h"

@interface MVVMViewModel : NSObject

@property (strong, nonatomic) NSString *contentString;

- (void)viewModelPrintClink;
- (void)setWithModel:(MVVMModel*)model;
@end
