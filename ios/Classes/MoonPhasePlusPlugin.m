#import "MoonPhasePlusPlugin.h"
#if __has_include(<moon_phase_plus/moon_phase_plus-Swift.h>)
#import <moon_phase_plus/moon_phase_plus-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "moon_phase_plus-Swift.h"
#endif

@implementation MoonPhasePlusPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMoonPhasePlusPlugin registerWithRegistrar:registrar];
}
@end
