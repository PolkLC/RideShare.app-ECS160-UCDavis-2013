//
//  RideShareAppDelegate.m
//  RideShare
//
//  Created by ChrisC on 4/27/13.
//  Copyright (c) 2013 Aggle. All rights reserved.
//

#import "RideShareAppDelegate.h"

#import "RSMyRideViewController.h"
#import "RSPassengerViewController.h"
#import "RSDriverViewController.h"
#import "RSLoginViewController.h"

@implementation RideShareAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    UIViewController *viewController1 = [[RSMyRideViewController alloc] initWithNibName:@"RSPCreateRideView" bundle:nil];//@"RSMyRideViewController" bundle:nil];
    UIViewController *viewController2 = [[RSPassengerViewController alloc] initWithNibName:@"RSPassengerViewController" bundle:nil];
    UIViewController *viewController3 = [[RSDriverViewController alloc] initWithNibName:@"RSDriverViewController" bundle:nil];
    UINavigationController *navController1= [[UINavigationController alloc] initWithRootViewController:viewController1];
    UINavigationController *navController2= [[UINavigationController alloc] initWithRootViewController:viewController2];
    UINavigationController *navController3= [[UINavigationController alloc] initWithRootViewController:viewController3];
    self.tabBarController = [[UITabBarController alloc] init];
    self.tabBarController.viewControllers = @[navController1, navController2, navController3];
    //self.tabBarController.
    self.window.rootViewController = self.tabBarController;
    
    RSLoginViewController *loginVC = [[RSLoginViewController alloc] init];
    
    [self.window makeKeyAndVisible];
    [self.window.rootViewController presentViewController:loginVC animated:YES completion:nil];
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

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
}
*/

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
{
}
*/

@end
