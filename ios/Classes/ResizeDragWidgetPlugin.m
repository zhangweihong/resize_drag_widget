#import "ResizeDragWidgetPlugin.h"
#if __has_include(<resize_drag_widget/resize_drag_widget-Swift.h>)
#import <resize_drag_widget/resize_drag_widget-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "resize_drag_widget-Swift.h"
#endif

@implementation ResizeDragWidgetPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftResizeDragWidgetPlugin registerWithRegistrar:registrar];
}
@end
