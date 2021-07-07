
#import "RNAppVersion.h"
//解决Implicit declaration of function 'callback' is invalid in C99问题
//https://blog.csdn.net/a308843141/article/details/49926799
#import "objc/runtime.h"

@implementation RNAppVersion


RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(getVersion:(RCTResponseSenderBlock)callback)
{
    NSString *version = [[[NSBundle mainBundle] infoDictionary]
                         objectForKey:@"CFBundleShortVersionString"];//获取项目版本号
    callback(@[[NSString stringWithFormat:@"%@",version]]);
};

@end
  
