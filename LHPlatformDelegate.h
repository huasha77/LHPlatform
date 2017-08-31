//
//  LHPlatformDelegate.h
//  dgame
//
//  Created by 李华 on 17/5/20.
//
//

#import <Foundation/Foundation.h>
@protocol PlatformDelegate <NSObject>

@required

@optional
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;
- (void)applicationWillResignActive:(UIApplication *)application;
- (void)applicationDidBecomeActive:(UIApplication *)application;
- (void)applicationDidEnterBackground:(UIApplication *)application;
- (void)applicationWillEnterForeground:(UIApplication *)application;
- (void)applicationWillTerminate:(UIApplication *)application;

//url
- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation;
- (BOOL)handleOpenUrl:(NSURL *)url application:(UIApplication *)application sourceApplication:(NSString *)sourceApplication;
- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url;
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary*)options;

@end

@interface LHPlatformDelegate : NSObject

+ (LHPlatformDelegate *)sharedInstance;

@property (nonatomic, strong) id <PlatformDelegate> delegate;

/* AppController */
- (BOOL)didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;
- (void)willResignActive:(UIApplication *)application;
- (void)didBecomeActive:(UIApplication *)application;
- (void)didEnterBackground:(UIApplication *)application;
- (void)willEnterForeground:(UIApplication *)application;
- (void)willTerminate:(UIApplication *)application;

// url
- (BOOL)openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation;
- (BOOL)handleOpenUrl:(NSURL *)url application:(UIApplication *)application sourceApplication:(NSString *)sourceApplication;
- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url;
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary*)options;

@end
