//
//  LHPlatformMgr.m
//  dgame
//
//  Created by 李华 on 17/5/20.
//
//

#import "LHPlatformMgr.h"
#import "LHPlatform.h"
#import <AdSupport/AdSupport.h>

@implementation LHPlatformMgr

+ (LHPlatformMgr *)instance {
    static LHPlatformMgr *instance = nil;
    static dispatch_once_t predicate;
    
    dispatch_once(&predicate, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (void)start {
    [self initData];
    //初始化SDK
    [LHPlatform getPlatformInstance];
}

- (void)initData {
    NSString* idfa = [[[ASIdentifierManager sharedManager] advertisingIdentifier ] UUIDString];
    NSLog(@"IDFA: %@", idfa);
    extern char* pszDeviceID;
    pszDeviceID = (char*)[idfa cStringUsingEncoding:NSASCIIStringEncoding];
}

+ (id)getInfoPlistVaue:(NSString*)key {
    NSDictionary* infoDict = [[NSBundle mainBundle] infoDictionary];
    return [infoDict objectForKey:key];
}

@end
