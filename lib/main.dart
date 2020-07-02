import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton(
                  onPressed: () {
                    player.play('note1.wav');
                  },
                  child: Container(
                    color: Colors.red,
                    child: Text('Click here for sound'),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
