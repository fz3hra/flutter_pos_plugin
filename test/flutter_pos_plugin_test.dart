import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_pos_plugin/flutter_pos_plugin.dart';
import 'package:flutter_pos_plugin/flutter_pos_plugin_platform_interface.dart';
import 'package:flutter_pos_plugin/flutter_pos_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterPosPluginPlatform
    with MockPlatformInterfaceMixin
    implements FlutterPosPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterPosPluginPlatform initialPlatform = FlutterPosPluginPlatform.instance;

  test('$MethodChannelFlutterPosPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterPosPlugin>());
  });

  test('getPlatformVersion', () async {
    FlutterPosPlugin flutterPosPlugin = FlutterPosPlugin();
    MockFlutterPosPluginPlatform fakePlatform = MockFlutterPosPluginPlatform();
    FlutterPosPluginPlatform.instance = fakePlatform;

    expect(await flutterPosPlugin.getPlatformVersion(), '42');
  });
}
