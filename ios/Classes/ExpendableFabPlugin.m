#import "ExpendableFabPlugin.h"
#if __has_include(<expendable_fab/expendable_fab-Swift.h>)
#import <expendable_fab/expendable_fab-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "expendable_fab-Swift.h"
#endif

@implementation ExpendableFabPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftExpendableFabPlugin registerWithRegistrar:registrar];
}
@end
