
import 'simple_share_native_platform_interface.dart';

class SimpleShareNative {
  Future<String?> getPlatformVersion() {
    return SimpleShareNativePlatform.instance.getPlatformVersion();
  }
}
