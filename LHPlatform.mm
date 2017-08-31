//
//  LHPlatform.m
//  dgame
//
//  Created by 李华 on 17/5/20.
//
//

#import "LHPlatform.h"
#import "LHPlatformMgr.h"
#import "LHDefine.h"

@implementation LHPlatform

+ (LHPlatform *)sharedInstance {
    static LHPlatform *instance = nil;
    static dispatch_once_t predicate;
    
    dispatch_once(&predicate, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (LHPlatform *)getPlatformInstance {
    NSString* platform = [LHPlatformMgr getInfoPlistVaue:@"Platform class name"];
    if (platform == nil) {
        LHLog(@"错误提示：你可能忘记在info-plist中配置key：Platform class name，此key的值应为SDK管理的类名。");
    }
    Class manager = NSClassFromString(platform);
    [manager retain];
    
    [LHPlatformDelegate sharedInstance].delegate = [manager sharedInstance];
    
    return [manager sharedInstance];
}

- (void)initSDK {
}

- (void)login {
    
}

- (bool)reqBuyDiamand:(int)num name:(NSString*)godName price:(int)godPrice godId:(NSString*)godId ip:(NSString*)serverId {
    return YES;
}

- (void)switchAccount {
    
}

- (void)enableSDKUI:(bool)bEnable {
    
}

- (void)showPausePage {
    
}


// optional
- (void)listenPayEvent {
}

- (void)closePayEvent {
    
}

- (void)DNYenableSDKUI:(NSString *)nsStr {
    
}

- (NSString *)getParam:(NSString*)param {
    return @"";
}

- (void)openLLHLogin {
    
}

@end
