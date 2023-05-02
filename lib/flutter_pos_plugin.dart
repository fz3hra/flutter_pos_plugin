
import 'flutter_pos_plugin_platform_interface.dart';

class FlutterPosPlugin {
  Future<String?> getPlatformVersion() {
    return FlutterPosPluginPlatform.instance.getPlatformVersion();
  }
}
