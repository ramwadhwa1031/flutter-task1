import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

localmusic() {
  AudioPlayer player = new AudioPlayer();
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Text("Offline Player",style: TextStyle( 
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),),
        Row( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
        
          color: Colors.blue,
          elevation: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/1.jpg"),
              IconButton(
                    icon: Icon(Icons.play_arrow),
                    color: Colors.white,
                     onPressed: () async {
                    player =
                        await AudioCache().loop("note1.wav");
                  },
                  ),

                  IconButton(
                    icon: Icon(Icons.pause),
                    color: Colors.white,
                    onPressed: () async {
                      await player.pause();
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.stop),
                    color: Colors.white,
                    onPressed: () async {
                      await player.stop();
                    },
                  ),
               
            ],
          ),
        ),
          ],
        ),
        Row( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
        
          color: Colors.blue,
          elevation: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/1.jpg"),
              IconButton(
                    icon: Icon(Icons.play_arrow),
                    color: Colors.white,
                     onPressed: () async {
                    player =
                        await AudioCache().loop("note1.wav");
                  },
                  ),

                  IconButton(
                    icon: Icon(Icons.pause),
                    color: Colors.white,
                    onPressed: () async {
                      await player.pause();
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.stop),
                    color: Colors.white,
                    onPressed: () async {
                      await player.stop();
                    },
                  ),
               
            ],
          ),
        ),
          ],
        ),
        
      ],
        
    ),
    );
}
