//
//  LHPlatformDelegate.m
//  dgame
//
//  Created by 李华 on 17/5/20.
//
//

#import "LHPlatformDelegate.h"

@implementation LHPlatformDelegate

+ (LHPlatformDelegate *)sharedInstance {
    static LHPlatformDelegate *instance = nil;
    static dispatch_once_t predicate;
    
    dispatch_once(&predicate, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

#pragma delegate
- (BOOL)didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    if ([_delegate respondsToSelector:@selector(application: didFinishLaunchingWithOptions:)]) {
        return [_delegate application:[UIApplication sharedApplication] didFinishLaunchingWithOptions:launchOptions];
    }
    return YES;
}

- (void)willResignActive:(UIApplication *)application {
    if ([_delegate respondsToSelector:@selector(applicationDidBecomeActive:)]) {
        [_delegate applicationWillResignActive:application];
    }
}

- (void)didBecomeActive:(UIApplication *)application {
    if ([_delegate respondsToSelector:@selector(applicationDidBecomeActive:)]) {
        [_delegate applicationDidBecomeActive:application];
    }
}

- (void)didEnterBackground:(UIApplication *)application {
    if ([_delegate respondsToSelector:@selector(applicationDidEnterBackground:)]) {
        [_delegate applicationDidEnterBackground:application];
    }
}

- (void)willEnterForeground:(UIApplication *)application {
    if ([_delegate respondsToSelector:@selector(applicationWillEnterForeground:)]) {
        [_delegate applicationWillEnterForeground:application];
    }
}

- (void)willTerminate:(UIApplication *)application {
    if ([_delegate respondsToSelector:@selector(applicationWillTerminate:)]) {
        [_delegate applicationWillTerminate:application];
    }
}

// url
- (BOOL)openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    if ([_delegate respondsToSelector:@selector(application: openURL: sourceApplication: annotation:)]) {
        return [_delegate application:[UIApplication sharedApplication] openURL:url sourceApplication:sourceApplication annotation:annotation];
    }
    return YES;
}

- (BOOL)handleOpenUrl:(NSURL *)url application:(UIApplication *)application sourceApplication:(NSString *)sourceApplication {
    if ([_delegate respondsToSelector:@selector(handleOpenUrl: application: sourceApplication:)]) {
        return [_delegate handleOpenUrl:url application:application sourceApplication:sourceApplication];
    }
    return YES;
}


- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url{
    if ([_delegate respondsToSelector:@selector(application: handleOpenURL:)]) {
        return [_delegate application:application handleOpenURL:url];
    }
    return YES;
}
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary*)options{
    if ([_delegate respondsToSelector:@selector(application: openURL: options:)]) {
        return [_delegate application:app openURL:url options:options];
    }
    return YES;
}

@end
