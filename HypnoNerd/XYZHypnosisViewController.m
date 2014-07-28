//
//  XYZHypnosisViewController.m
//  HypnoNerd
//
//  Created by Valliappa Chockalingam on 7/15/14.
//  Copyright (c) 2014 Valliappa Chockalingam. All rights reserved.
//

#import "MySegmentedControl.h"
#import "XYZHypnosisViewController.h"
#import "XYZHypnosisView.h"

@implementation XYZHypnosisViewController

-(void) loadView
{
    XYZHypnosisView* backgroundView = [[XYZHypnosisView alloc] init];
    
    MySegmentedControl* segment = [[MySegmentedControl alloc] initWithItems:@[@"Red", @"Green", @"Blue"]];
    
    backgroundView.segment = segment;
    
    segment.frame = CGRectMake(95, 40, 125, 25);
    
    segment.view = backgroundView;
    
    [segment addTarget:self
                action:@selector(segmentChosen:)
      forControlEvents:UIControlEventValueChanged];
    
    self.view = backgroundView;
    
    [self.view addSubview:segment];
    
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self)
    {
        self.tabBarItem.title = @"Hypnotize";
    }
    
    return self;
}

- (void) viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"XYZHypnosisViewController loaded its view.");
}

-(void)segmentChosen:(id)sender
{
    MySegmentedControl *segmentedControl = (MySegmentedControl *)sender;
    XYZHypnosisView* view = segmentedControl.view;
    NSString* str = [segmentedControl titleForSegmentAtIndex: [segmentedControl selectedSegmentIndex]];
    
    if([str compare:@"Red"] == NSOrderedSame)
    {
        UIColor* red = [UIColor redColor];
        view.circleColor = red;
    }
    
    if([str compare:@"Blue"] == NSOrderedSame)
    {
        UIColor* blue = [UIColor blueColor];
        view.circleColor = blue;
    }
    
    if([str compare:@"Green"] == NSOrderedSame)
    {
        UIColor* green = [UIColor greenColor];
        view.circleColor = green;
    }
}


@end