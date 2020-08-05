import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
onlinemusic() {
  final assetsAudioPlayer = AssetsAudioPlayer();
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
                      onPressed: ()  {
                    assetsAudioPlayer.open(
                      Audio.network("https://raw.githubusercontent.com/ramwadhwa1031/flutter-class/master/Alan%20Walker%2C%20Sabrina%20Carpenter%20%26%20Farruko%20-%20On%20My%20Way.mp3"),
                  );
                  },
                  ),

                  IconButton(
                    icon: Icon(Icons.pause),
                    color: Colors.white,
                    onPressed: ()  {
                      assetsAudioPlayer.pause();
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.stop),
                    color: Colors.white,
                    onPressed: ()  {
                      assetsAudioPlayer.pause();
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
                     onPressed: ()  {
                    assetsAudioPlayer.open(
                      Audio.network("https://luan.xyz/files/audio/nasa_on_a_mission.mp3"),
                  );
                  },
                  ),

                  IconButton(
                    icon: Icon(Icons.pause),
                    color: Colors.white,
                    onPressed: ()  {
                     assetsAudioPlayer.pause();
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.stop),
                    color: Colors.white,
                    onPressed: ()  {
                      assetsAudioPlayer.pause();
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
