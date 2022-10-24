import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'resizable_draggable_widget_platform_interface.dart';

/// An implementation of [ResizableDraggableWidgetPlatform] that uses method channels.
class MethodChannelResizableDraggableWidget extends ResizableDraggableWidgetPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('resizable_draggable_widget');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
