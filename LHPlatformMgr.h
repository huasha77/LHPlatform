//
//  LHPlatformMgr.h
//  dgame
//
//  Created by 李华 on 17/5/20.
//
//

#import <Foundation/Foundation.h>

@interface LHPlatformMgr : NSObject

@property (nonatomic, strong) NSString *deviceID;

+ (LHPlatformMgr *)instance;

- (void)start;
- (void)initData;

+ (id)getInfoPlistVaue:(NSString*)key;

@end
