//
//  XYZDrawViewController.m
//  TouchTracker
//
//  Created by Valliappa Chockalingam on 7/17/14.
//  Copyright (c) 2014 Valliappa Chockalingam. All rights reserved.
//

#import "XYZDrawViewController.h"
#import "XYZDrawView.h"

@implementation XYZDrawViewController

- (void)loadView
{
    self.view = [[XYZDrawView alloc] initWithFrame:CGRectZero];
}

@end
