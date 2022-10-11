import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'simple_share_native_platform_interface.dart';

/// An implementation of [SimpleShareNativePlatform] that uses method channels.
class MethodChannelSimpleShareNative extends SimpleShareNativePlatform {
  @visibleForTesting
  final methodChannel = const MethodChannel('simple_share_native');

  @override
  Future<void> shareMessage(String message) async {
    try {
      await methodChannel.invokeMethod(
        'shareMessage',
        {'message': message},
      );
    } catch (e) {
      print(e.toString());
    }
  }
}
