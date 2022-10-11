# simple_share_native_example

Demonstrates how to use the simple_share_native plugin.

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
This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
