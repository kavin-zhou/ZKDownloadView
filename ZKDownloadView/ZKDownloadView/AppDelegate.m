//
//  AppDelegate.m
//  ZKDownloadView
//
//  Created by ZK on 16/9/5.
//  Copyright © 2016年 ZK. All rights reserved.
//

#import "AppDelegate.h"
#import "ZKMainViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self setupWindow];
    return YES;
}

- (void)setupWindow
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    ZKMainViewController *mainVC = [[ZKMainViewController alloc] init];
    self.window.rootViewController = mainVC;
}

@end
