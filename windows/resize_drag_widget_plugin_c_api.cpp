#include "include/resize_drag_widget/resize_drag_widget_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "resize_drag_widget_plugin.h"

void ResizeDragWidgetPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  resize_drag_widget::ResizeDragWidgetPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
