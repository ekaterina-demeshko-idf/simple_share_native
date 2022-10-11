#import "SimpleShareNativePlugin.h"
#if __has_include(<simple_share_native/simple_share_native-Swift.h>)
#import <simple_share_native/simple_share_native-Swift.h>
#else
#import "simple_share_native-Swift.h"
#endif

@implementation SimpleShareNativePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSimpleShareNativePlugin registerWithRegistrar:registrar];
}
@end
