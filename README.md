# simple_share_native

A new Flutter plugin project.

## Getting Started
This is just a simple share plugin that can share only text.

# Usage
```
// import plugin and init it

import 'package:simple_share_native/simple_share_native.dart';
  final _simpleShareNativePlugin = SimpleShareNative();
  
  //use shareMessage method and pass the message you want to share
  Future<void> shareText() async {
    final String message = textController.text.trim();
    await _simpleShareNativePlugin.shareMessage(message);
  }
  ```

This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

For help getting started with Flutter development, view the
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

