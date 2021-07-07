
#import <Foundation/Foundation.h>
//#import <React/RCTBridgeModule.h>
#if __has_include(<React/RCTBridgeModule.h>)
#import <React/RCTBridgeModule.h>
#else
#import "RCTBridgeModule.h"
#endif

@interface RNAppVersion : NSObject <RCTBridgeModule>

@end
  
