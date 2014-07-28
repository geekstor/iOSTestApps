//
//  XYZHypnosisView.h
//  Hypnotizer
//
//  Created by Valliappa Chockalingam on 7/4/14.
//  Copyright (c) 2014 Valliappa Chockalingam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XYZHypnosisView : UIView

@property (strong, nonatomic) UIColor* circleColor;

@property UISegmentedControl* segment;

- (instancetype)initWithFrame:(CGRect)frame;

- (void) drawRect:(CGRect)rect;

@end
