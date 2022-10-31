import 'simple_share_native_platform_interface.dart';

class SimpleShareNative {
  Future<void> shareMessage(String message) async {
    await SimpleShareNativePlatform.instance.shareMessage(message);
  }
}
