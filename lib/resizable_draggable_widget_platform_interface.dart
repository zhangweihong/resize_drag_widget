import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'resizable_draggable_widget_method_channel.dart';

abstract class ResizableDraggableWidgetPlatform extends PlatformInterface {
  /// Constructs a ResizableDraggableWidgetPlatform.
  ResizableDraggableWidgetPlatform() : super(token: _token);

  static final Object _token = Object();

  static ResizableDraggableWidgetPlatform _instance = MethodChannelResizableDraggableWidget();

  /// The default instance of [ResizableDraggableWidgetPlatform] to use.
  ///
  /// Defaults to [MethodChannelResizableDraggableWidget].
  static ResizableDraggableWidgetPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ResizableDraggableWidgetPlatform] when
  /// they register themselves.
  static set instance(ResizableDraggableWidgetPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
