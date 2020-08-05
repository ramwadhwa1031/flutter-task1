import 'package:flutter/material.dart';
import 'package:player_task1/ui/onlineaudio.dart';
import 'package:player_task1/ui/onlinevideo.dart';
import 'ui/videoplayer.dart';
import 'ui/localmusic.dart';
void main() {
  runApp(TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                 Tab(icon: Icon(Icons.library_music)),
                Tab(icon: Icon(Icons.offline_bolt)),
                Tab(icon: Icon(Icons.ondemand_video)),
                Tab(icon: Icon(Icons.music_video)),
              ],
            ),
            title: Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
               localmusic(),
              videoPlayeroffline(),
              videoPlayeronline(),
               onlinemusic(),
            ],
          ),
        ),
      ),
    );
  }
}