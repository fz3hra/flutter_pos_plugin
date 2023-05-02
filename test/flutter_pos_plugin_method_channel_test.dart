import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_pos_plugin/flutter_pos_plugin_method_channel.dart';

void main() {
  MethodChannelFlutterPosPlugin platform = MethodChannelFlutterPosPlugin();
  const MethodChannel channel = MethodChannel('flutter_pos_plugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
