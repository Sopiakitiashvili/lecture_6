import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

final audioPlayer = AudioPlayer();

Future setAudio({required String path}) async{
   await audioPlayer.setSource(AssetSource(path));
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dictionary"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () async{
            await setAudio(path: "sounds/wavetech-6427fead49a3968cc5caaabe.wav");
            audioPlayer.play(audioPlayer.source!);
            },
            child: Container(
              height: 100,
              color: Colors.red,
              padding: EdgeInsets.all(50),
            ),
          ),
          GestureDetector(
            onTap: () async{
              await setAudio(path: "sounds/wavetech-6427fee649a3968cc5caaac1.wav");
              audioPlayer.play(audioPlayer.source!);
            },
            child: Container(
            height: 100,
            color: Colors.yellow,
            padding: EdgeInsets.all(50),
    ),
          ),
          GestureDetector(
            onTap: () async{
              await setAudio(path: "sounds/wavetech-6427ff1a49a3968cc5caaac5.wav");
              audioPlayer.play(audioPlayer.source!);
            },
            child: Container(
              height: 100,
              color: Colors.green,
              padding: EdgeInsets.all(50),
            ),
          ),
        ],
      ),
    );
  }
}
