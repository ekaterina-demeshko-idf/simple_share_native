import 'package:flutter/material.dart';
import 'dart:async';
import 'package:simple_share_native/simple_share_native.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _simpleShareNativePlugin = SimpleShareNative();
  final textController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  Future<void> shareText() async {
    final String message = textController.text.trim();
    await _simpleShareNativePlugin.shareMessage(message);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(

              children: [
                const Text(
                  'Message you want to share:',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 15),
                TextField(
                  controller: textController,
                  style: const TextStyle(fontSize: 30),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.grey,
                  ),
                ),
                const SizedBox(height: 15),
                ElevatedButton(onPressed: shareText, child: const Text('SHARE'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
