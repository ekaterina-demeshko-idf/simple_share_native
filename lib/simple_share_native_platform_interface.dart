import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'simple_share_native_method_channel.dart';

abstract class SimpleShareNativePlatform extends PlatformInterface {
  SimpleShareNativePlatform() : super(token: _token);

  static final Object _token = Object();

  static SimpleShareNativePlatform _instance = MethodChannelSimpleShareNative();

  static SimpleShareNativePlatform get instance => _instance;

  static set instance(SimpleShareNativePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> shareMessage(String message) {
    throw UnimplementedError('shareMessage() has not been implemented.');
  }
}
