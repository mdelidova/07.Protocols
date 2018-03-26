//
//  AppDelegate.m
//  Protocols
//
//  Created by Maryna Delidova on 3/25/18.
//  Copyright © 2018 Maryna Delidova. All rights reserved.
//

#import "AppDelegate.h"
#import "MDPatient.h"
#import "MDDancer.h"
#import "MDDeveloper.h"
#import "MDStudent.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    MDDancer* dancer1 = [[MDDancer alloc] init];
    MDDancer* dancer2 = [[MDDancer alloc] init];
    
    MDStudent* student1 = [[MDStudent alloc] init];
    MDStudent* student2 = [[MDStudent alloc] init];
    MDStudent* student3 = [[MDStudent alloc] init];
    
    MDDeveloper* developer1 = [[MDDeveloper alloc ]init];
    
    dancer1.name = @"dancer 1";
    dancer2.name = @"dancer 2";
    
    student1.name = @"student 1";
    student2.name = @"student 2";
    student3.name = @"student 3";
    
    developer1.name = @"developer 1";
    
    NSObject* fake = [[NSObject alloc] init];
    
    NSArray* patients = [NSArray arrayWithObjects: fake, dancer1, dancer2, student1, student2, student3,
                         developer1,nil];
    
    for (id <MDPatient> patient in patients) {
        if ([patient conformsToProtocol:@protocol(MDPatient)]) {
            
            if ([patient respondsToSelector: @selector (howIsYourFamily)]) {
                NSLog(@"How is your family? \n%@", [patient howIsYourFamily]);
            }
            
            if ([patient respondsToSelector: @selector (howIsYourJob)]) {
                NSLog(@"How is your job? \n%@", [patient howIsYourJob]);
            }
            
            
            if ( ! [patient areYouOk]) {
                [patient takePill];
                
                if (! [patient areYouOk]) {
                    [patient makeShot];
                }
            }
        }else {
            NSLog(@"FAKE!!!");
        }
    return YES;


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
    
    
