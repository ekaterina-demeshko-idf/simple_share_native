#import "SimpleShareNativePlugin.h"
#if __has_include(<simple_share_native/simple_share_native-Swift.h>)
#import <simple_share_native/simple_share_native-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "simple_share_native-Swift.h"
#endif

@implementation SimpleShareNativePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSimpleShareNativePlugin registerWithRegistrar:registrar];
}
@end
