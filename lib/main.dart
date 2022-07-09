import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  // Future<void> setSource(Source source) async {
  //   setState(() => isSourceSet = false);
  //   await widget.player.setSource(source);
  //   setState(() => isSourceSet = true);
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          // Use TextButton instead of FlatButton
          child: Center(
            child: TextButton(
              onPressed: () {
                final assetsAudioPlayer = AssetsAudioPlayer();

                assetsAudioPlayer.open(
                  Audio("assets/audio/note1.wav"),
                );
              },
              // onPressed: () => AudioCache AudioCache({String prefix = 'assets/note1.wav'}),
              //     String prefix;

              child: const Text('Click Me'),
            ),
          ),
        ),
      ),
    );
  }
}
