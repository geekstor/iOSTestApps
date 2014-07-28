//
//  XYZReminderViewController.m
//  HypnoNerd
//
//  Created by Valliappa Chockalingam on 7/15/14.
//  Copyright (c) 2014 Valliappa Chockalingam. All rights reserved.
//

#import "XYZReminderViewController.h"

@interface XYZReminderViewController ()

@property (nonatomic, weak) IBOutlet UIDatePicker* datePicker;

@end

@implementation XYZReminderViewController

- (IBAction) addReminder:(id) sender
{
    NSDate* date = self.datePicker.date;
    NSLog(@"Setting a reminder for %@", date);
    
    UILocalNotification* note = [[UILocalNotification alloc] init];
    
    note.alertBody = @"Hypnotize me!";
    note.fireDate = date;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:note];
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self)
    {
        self.tabBarItem.title = @"Reminder";
    }
    
    return self;
}

- (void) viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"XYZReminderViewController loaded its view.");
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.datePicker.minimumDate = [NSDate dateWithTimeIntervalSinceNow:60];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    self.datePicker.minimumDate = [NSDate dateWithTimeIntervalSinceNow:60];
}


@end
