import 'package:flutter_test/flutter_test.dart';
import 'package:simple_share_native/simple_share_native.dart';
import 'package:simple_share_native/simple_share_native_platform_interface.dart';
import 'package:simple_share_native/simple_share_native_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSimpleShareNativePlatform
    with MockPlatformInterfaceMixin
    implements SimpleShareNativePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final SimpleShareNativePlatform initialPlatform = SimpleShareNativePlatform.instance;

  test('$MethodChannelSimpleShareNative is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSimpleShareNative>());
  });

  test('getPlatformVersion', () async {
    SimpleShareNative simpleShareNativePlugin = SimpleShareNative();
    MockSimpleShareNativePlatform fakePlatform = MockSimpleShareNativePlatform();
    SimpleShareNativePlatform.instance = fakePlatform;

    expect(await simpleShareNativePlugin.getPlatformVersion(), '42');
  });
}
