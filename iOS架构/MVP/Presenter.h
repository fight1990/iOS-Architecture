//
//  Presenter.h
//  iOS架构
//
//  Created by butcher on 2017/10/13.
//  Copyright © 2017年 butcher. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVPModel.h"
#import "MVPView.h"

@interface Presenter : NSObject<MVPViewDelegate>

@property (strong, nonatomic) MVPView *view;
@property (strong, nonatomic) MVPModel *model;

- (void)printTask;

@end
