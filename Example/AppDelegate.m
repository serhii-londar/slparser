//
//  AppDelegate.m
//  Example
//
//  Created by Serhii Londar on 8/14/17.
//  Copyright © 2017 slon. All rights reserved.
//

#import "AppDelegate.h"
#import "SLModelParser.h"
#import "TEST.h"
#import "SLDire_team.h"
#import "SLEnhanced_matches.h"
#import "SLFinished_matches.h"
#import "SLGames.h"
#import "SLLeague.h"
#import "SLRadiant_team.h"
#import "SLRecent_matches.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSString *jsonString = [NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"text" ofType:@"txt"] encoding:NSUTF8StringEncoding error:nil];
    NSData *data = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    NSLog(@"testDictionary - %@", json);
    
    [[SLModelParser sharedParser] registerClass:[SLDire_team class]];
    [[SLModelParser sharedParser] registerClass:[SLEnhanced_matches class]];
    [[SLModelParser sharedParser] registerClass:[SLFinished_matches class]];
    [[SLModelParser sharedParser] registerClass:[SLGames class]];
    [[SLModelParser sharedParser] registerClass:[SLLeague class]];
    [[SLModelParser sharedParser] registerClass:[SLRadiant_team class]];
    [[SLModelParser sharedParser] registerClass:[SLRecent_matches class]];
    [[SLModelParser sharedParser] registerClass:[TEST class]];
    
    TEST *lTest = [[SLModelParser sharedParser] getModelFromDictionary:json];
    
    NSDictionary *lModelDict = [[SLModelParser sharedParser] getDictionaryFromModel:lTest];
    NSLog(@"%@", lModelDict);
    // Override point for customization after application launch.
    return YES;
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
