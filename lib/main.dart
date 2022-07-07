import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          // Use TextButton instead of FlatButton
          child: Center(
            child: TextButton(
              onPressed: () {
                final player = AudioCache();
                player.prefix = 'note1.wav';
              },
              child: const Text('Click Here'),
            ),
          ),
        ),
      ),
    );
  }
}
