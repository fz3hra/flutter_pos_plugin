import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_pos_plugin_platform_interface.dart';

/// An implementation of [FlutterPosPluginPlatform] that uses method channels.
class MethodChannelFlutterPosPlugin extends FlutterPosPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_pos_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
