# LHPlatform
 
#LHPlatform：其他SDK管理类的抽象类，也就是父类，提供与SDK接头的方法
 
#LHPlatformDelegate：app事件通知，通过代理的方式

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
 
# LHPlatformMgr
@interface LHPlatformMgr : NSObject

@property (nonatomic, strong) NSString *deviceID;

+ (LHPlatformMgr *)instance;

- (void)start;

在 didFinishLaunchingWithOptions方法中初始化一下就好了，是不是非常的简单。
