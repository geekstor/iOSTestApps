//
//  XYZAppDelegate.m
//  HypnoNerd
//
//  Created by Valliappa Chockalingam on 7/15/14.
//  Copyright (c) 2014 Valliappa Chockalingam. All rights reserved.
//

#import "XYZAppDelegate.h"
#import "XYZHypnosisViewController.h"
#import "XYZReminderViewController.h"
#import "XYZViewController.h"

@implementation XYZAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    XYZHypnosisViewController* hvc = [[XYZHypnosisViewController alloc] init];
    
    // NSBundle* appBundle = [NSBundle mainBundle];
    
    // XYZReminderViewController* rvc = [[XYZReminderViewController alloc] initWithNibName:@"XYZReminderViewController" bundle: appBundle];
    
    XYZReminderViewController* rvc = [[XYZReminderViewController alloc] init];
    
    XYZViewController* qvc = [[XYZViewController alloc] init];
    
    UITabBarController* tabBarController = [[UITabBarController alloc] init];
    
    tabBarController.viewControllers = @[hvc, rvc, qvc];
    
    // self.window.rootViewController = hvc;
    // self.window.rootViewController = rvc;
    self.window.rootViewController = tabBarController;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
