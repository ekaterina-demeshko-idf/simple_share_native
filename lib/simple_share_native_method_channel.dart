import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'simple_share_native_platform_interface.dart';

/// An implementation of [SimpleShareNativePlatform] that uses method channels.
class MethodChannelSimpleShareNative extends SimpleShareNativePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('simple_share_native');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
