import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart'; //package for playing audio note

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void xyloPhone(int note) {
    final player = AudioPlayer();
    player.play(AssetSource('note$note.wav'));
    //for playing note
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Xylophone App')),
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () {
                  xyloPhone(1);
                },
                child: Text('Note1'),
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.yellow,
                ),
                onPressed: () {
                  xyloPhone(2);
                },
                child: Text('Note2'),
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.purple,
                ),
                onPressed: () {
                  xyloPhone(3);
                },
                child: Text('Note3'),
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                onPressed: () {
                  xyloPhone(4);
                },
                child: Text('Note4'),
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.brown,
                ),
                onPressed: () {
                  xyloPhone(5);
                },
                child: Text('Note5'),
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.pink,
                ),
                onPressed: () {
                  xyloPhone(6);
                },
                child: Text('Note6'),
              ),
            ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                onPressed: () {
                  xyloPhone(7);
                },
                child: Text('Note7'),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
