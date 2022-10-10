import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'simple_share_native_method_channel.dart';

abstract class SimpleShareNativePlatform extends PlatformInterface {
  /// Constructs a SimpleShareNativePlatform.
  SimpleShareNativePlatform() : super(token: _token);

  static final Object _token = Object();

  static SimpleShareNativePlatform _instance = MethodChannelSimpleShareNative();

  /// The default instance of [SimpleShareNativePlatform] to use.
  ///
  /// Defaults to [MethodChannelSimpleShareNative].
  static SimpleShareNativePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SimpleShareNativePlatform] when
  /// they register themselves.
  static set instance(SimpleShareNativePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
