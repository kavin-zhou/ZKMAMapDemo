//
//  AppDelegate.m
//  ZKMAMapDemo
//
//  Created by ZK on 16/7/9.
//  Copyright © 2016年 ZK. All rights reserved.
//

#import "AppDelegate.h"
#import "ZKMainViewController.h"
#import <AMapFoundationKit/AMapFoundationKit.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    // 注册高德地图Key
    [AMapServices sharedServices].apiKey = MAMap_Key;
    
    ZKMainViewController *mainVC = [[ZKMainViewController alloc] init];
    self.window.rootViewController = mainVC;
    
    return YES;
}

@end
