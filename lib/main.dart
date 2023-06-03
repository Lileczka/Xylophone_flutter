import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  //function qui prend dans parametre numero de son
  //on choisi nom de la variable

  void play(int numberOfSound) {
    final player = AudioPlayer();
    player.play(AssetSource('note$numberOfSound.wav'));
  }

  Expanded buildBlok(Color color, int numberOfSound) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          play(numberOfSound);
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        child: const SizedBox(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black54,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildBlok(Colors.yellow, 1),
              buildBlok(Colors.red, 2),
              buildBlok(Colors.lightBlueAccent, 1),
              buildBlok(Colors.blue, 1),
              buildBlok(Colors.green, 1),
              buildBlok(Colors.brown, 1),
              buildBlok(const Color.fromARGB(255, 9, 21, 87), 1),
            ],
          ),
        ),
      ),
    );
  }
}
