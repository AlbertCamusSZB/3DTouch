//
//  AppDelegate.m
//  3DTouch
//
//  Created by rookie on 2017/10/19.
//  Copyright © 2017年 mamahome. All rights reserved.
//

#import "AppDelegate.h"
#import "HomeDetailController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

-(void)setup3DTouch{
    
    //    UIApplicationShortcutIcon *icon0 = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeAdd];
    
    
    UIApplicationShortcutIcon *icon1 = [UIApplicationShortcutIcon iconWithTemplateImageName:@"pic1"];
    UIApplicationShortcutIcon *icon2 = [UIApplicationShortcutIcon iconWithTemplateImageName:@"pic2"];
    UIApplicationShortcutIcon *icon3 = [UIApplicationShortcutIcon iconWithTemplateImageName:@"pic3"];
    UIApplicationShortcutIcon *icon4 = [UIApplicationShortcutIcon iconWithTemplateImageName:@"pic4"];
    
    //    UIMutableApplicationShortcutItem *item0 = [[UIMutableApplicationShortcutItem alloc]initWithType:@"add" localizedTitle:@"进入add" localizedSubtitle:nil icon:icon0 userInfo:nil];
    
    UIMutableApplicationShortcutItem *item1 = [[UIMutableApplicationShortcutItem alloc]initWithType:@"pic1" localizedTitle:@"进入pic1" localizedSubtitle:@"自定义图标pic1" icon:icon1 userInfo:nil];
    UIMutableApplicationShortcutItem *item2 = [[UIMutableApplicationShortcutItem alloc]initWithType:@"pic2" localizedTitle:@"进入pic2" localizedSubtitle:@"自定义图标pic2" icon:icon2 userInfo:nil];
    UIMutableApplicationShortcutItem *item3 = [[UIMutableApplicationShortcutItem alloc]initWithType:@"pic3" localizedTitle:@"进入pic3" localizedSubtitle:@"自定义图标pic3" icon:icon3 userInfo:nil];
    UIMutableApplicationShortcutItem *item4 = [[UIMutableApplicationShortcutItem alloc]initWithType:@"pic4" localizedTitle:@"进入pic4" localizedSubtitle:@"自定义图标pic4" icon:icon4 userInfo:nil];
    
    
    [[UIApplication sharedApplication] setShortcutItems:@[item1,item2,item3,item4]];
    //      [[UIApplication sharedApplication] setShortcutItems:@[item0]];
    
}
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    // 首先判断是否支持3DTouch
    if(self.window.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable)
    {
        [self setup3DTouch];
    }
    return YES;
}
#pragma mark -  通过快捷选项进入app的时候会调用该方法
- (void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler
{
    HomeDetailController *vc = [[HomeDetailController alloc] init];
    
    
    //1.获得shortcutItem的type type就是初始化shortcutItem的时候传入的唯一标识符
    NSString *type = shortcutItem.type;
    //2.可以通过type来判断点击的是哪一个快捷按钮 并进行每个按钮相应的点击事件
    if ([type isEqualToString:@"pic1"]) {
        vc.name = @"pic1";
    }else if ([type isEqualToString:@"pic2"]){
        vc.name = @"pic2";
    }else if ([type isEqualToString:@"pic3"]){
        vc.name = @"pic3";
    }else if ([type isEqualToString:@"pic4"]){
        vc.name = @"pic4";
    }
    
    [(UINavigationController *)self.window.rootViewController pushViewController:vc animated:YES];
    
    
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
