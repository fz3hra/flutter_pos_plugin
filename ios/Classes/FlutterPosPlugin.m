#import "FlutterPosPlugin.h"
#if __has_include(<flutter_pos_plugin/flutter_pos_plugin-Swift.h>)
#import <flutter_pos_plugin/flutter_pos_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_pos_plugin-Swift.h"
#endif

@implementation FlutterPosPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterPosPlugin registerWithRegistrar:registrar];
}
@end
