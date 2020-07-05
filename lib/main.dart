import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(XylophoneApp());
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
}

class XylophoneApp extends StatelessWidget {
  void playSound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  // ignore: non_constant_identifier_names
  Widget Key(int note, Color color) {
    return Expanded(
      // ignore: missing_required_param
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(note);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Key(1, Colors.red),
              Key(2, Colors.orange),
              Key(3, Colors.yellow),
              Key(4, Colors.green),
              Key(5, Colors.teal),
              Key(6, Colors.blue),
              Key(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
