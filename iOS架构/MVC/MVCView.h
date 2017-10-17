//
//  MVCView.h
//  iOS架构
//
//  Created by butcher on 2017/10/13.
//  Copyright © 2017年 butcher. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MVCModel.h"

@protocol MVCViewDelegate

@optional
- (void)onPrintBtnClick;

@end;

@interface MVCView : UIView

@property (weak, nonatomic) id<MVCViewDelegate> delegate;

- (void)printOnView:(MVCModel*)model;

@end
