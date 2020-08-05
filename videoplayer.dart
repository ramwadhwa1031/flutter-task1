import 'video.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

videoPlayeroffline() { 
  return(MyHomePage());
}



class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: ListView(
        
        children: <Widget>[
          Center(
            child: Text(" Offline Video",style: TextStyle( height: 2, fontSize: 20,
            fontWeight: FontWeight.bold,),),
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'videos/1.mp4',
            ),
            looping: true,
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'videos/2.mp4',
            ),
            looping: true,
          ),
          
         
        ],
      ),
    );
  }
}