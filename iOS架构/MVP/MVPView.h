//
//  MVPView.h
//  iOS架构
//
//  Created by butcher on 2017/10/13.
//  Copyright © 2017年 butcher. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MVPModel.h"


@protocol MVPViewDelegate
@optional
- (void)onPrintBtnClick;

@end;

@interface MVPView : UIView

@property (weak, nonatomic) id<MVPViewDelegate> delegate;

- (void)printOnView:(NSString*)content;

@end
