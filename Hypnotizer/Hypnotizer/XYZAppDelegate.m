//
//  XYZAppDelegate.m
//  Hypnotizer
//
//  Created by Valliappa Chockalingam on 7/4/14.
//  Copyright (c) 2014 Valliappa Chockalingam. All rights reserved.
//

#import "XYZAppDelegate.h"
#import "XYZHypnosisView.h"

@implementation XYZAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    // CGRect firstFrame = CGRectMake(160, 240, 100, 150);
    
    // CGRect firstFrame = self.window.bounds;
    
    // XYZHypnosisView* firstView = [[XYZHypnosisView alloc] initWithFrame:firstFrame];
    
    // firstView.backgroundColor = [UIColor redColor];
    
    // [self.window addSubview:firstView];
    
    // CGRect secondFrame = CGRectMake(20,30,50,50);
    
    // XYZHypnosisView* secondView = [[XYZHypnosisView alloc] initWithFrame:secondFrame];
    
    // secondView.backgroundColor = [UIColor blueColor];
    
    // [firstView addSubview:secondView];
    
    CGRect screenRect = self.window.bounds;
    CGRect bigRect = screenRect;
    
    bigRect.size.width *= 2.0;
    // bigRect.size.height *= 2.0;
    
    UIScrollView* scrollView = [[UIScrollView alloc] initWithFrame:screenRect];
    scrollView.pagingEnabled = YES;
    [self.window addSubview:scrollView];
    
    // XYZHypnosisView* hypnosisView = [[XYZHypnosisView alloc] initWithFrame:bigRect];
    XYZHypnosisView* hypnosisView = [[XYZHypnosisView alloc] initWithFrame:screenRect];
    
    [scrollView addSubview:hypnosisView];
    
    screenRect.origin.x += screenRect.size.width;
    XYZHypnosisView* anotherView = [[XYZHypnosisView alloc] initWithFrame:screenRect];
    [scrollView addSubview:anotherView];
    
    scrollView.contentSize = bigRect.size;
    
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
