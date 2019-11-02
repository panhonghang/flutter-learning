import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


class PlayPage extends StatefulWidget {
  @override
  _PlayPageState createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {

  AudioPlayer audioPlayer = AudioPlayer();

  play(String url) async {
      int result = await audioPlayer.play(url);
      if (result == 1) {
        // success
        print('play success');
      } else {
        print('play failed');
      }
    }

  pause() async {
      int result = await audioPlayer.pause();
      if (result == 1) {
        // success
        print('pause success');
      } else {
        print('pause failed');
      }
    }

  String songName = '';
  String singer = '';
  String url = '';
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          title: ListTile(
            title: Text(songName),
            subtitle: Text(singer),
          ),
          actions: <Widget>[
            Icon(Icons.share),
          ],
        ),
       body: Container(
         child: Column(
           children: <Widget>[
             Container(
               child: Text('播放界面'),
             ),
             Container(
               child: Row(
                 children: <Widget>[
                   Icon(Icons.save),
                   Icon(Icons.save),
                   Icon(Icons.save),
                   Icon(Icons.save),
                 ],
               ),
             ),
             Container(
               child: Row(
                 children: <Widget>[
                   Icon(Icons.menu),
                   Container(
                     child: Row(
                       children: <Widget>[
                         IconButton(
                            icon: Icon(Icons.arrow_left),
                            onPressed: (){
                              play(url);
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.music_video),
                            onPressed: (){
                              if(flag){
                                play(url);
                                flag = !flag;
                              } else {
                                pause();
                                flag = !flag;
                              }
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.arrow_right),
                            onPressed: (){
                              play(url);
                            },
                          ),
                       ],
                     ),
                   ),
                   Icon(Icons.menu),
                 ],
               ),
             )
           ],
         ),
       ),
      )
    );
  }
}