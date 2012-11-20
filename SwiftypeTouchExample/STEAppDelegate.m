//
//  STEAppDelegate.m
//  SwiftypeTouchExample
//
//
//  Copyright (c) 2012 Swiftype. All rights reserved.
//

#import "STEAppDelegate.h"
#import "STESearchViewController.h"

@implementation STEAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    STESearchViewController *searchViewController = [[STESearchViewController alloc] init];
    
    self.window.rootViewController = searchViewController;
    [self.window makeKeyAndVisible];
    return YES;
}


@end
