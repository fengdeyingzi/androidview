#import "AndroidviewPlugin.h"
#if __has_include(<androidview/androidview-Swift.h>)
#import <androidview/androidview-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "androidview-Swift.h"
#endif

@implementation AndroidviewPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAndroidviewPlugin registerWithRegistrar:registrar];
}
@end
