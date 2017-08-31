//
//  LHPlatform.h
//  dgame
//
//  Created by 李华 on 17/5/20.
//
//

#import <Foundation/Foundation.h>
#import "LHPlatformDelegate.h"

@interface LHPlatform : NSObject <PlatformDelegate>

+ (LHPlatform *)sharedInstance;
+ (LHPlatform *)getPlatformInstance;

// master
- (void)initSDK;
- (void)login;
- (bool)reqBuyDiamand:(int)num name:(NSString*)godName price:(int)godPrice godId:(NSString*)godId ip:(NSString*)serverId;
- (void)switchAccount;

// optional
- (void)enableSDKUI:(bool)bEnable;
- (void)DNYenableSDKUI:(NSString *)nsStr;

- (void)showPausePage;
- (void)listenPayEvent;
- (void)closePayEvent;
- (NSString *)getParam:(NSString *)param;
- (void)openLLHLogin;

@end
