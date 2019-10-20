import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

Future<Post> fetchPost() async {
  final response =
      await http.get('https://cnodejs.org/api/v1/topics');
  final responseJson = json.decode(response.body);
  // print(responseJson);
  return new Post.fromJson(responseJson);
}

class Post {
  final String userId;
  final String id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    var res = json['data'][0];
    print(res['id']);
    return new Post(
      userId: res['id'],
      id: res['tab'],
      title: res['title'],
      body: res['content'],
    );
  }
}

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Fetch Data Example',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Fetch Data Example'),
        ),
        body: new Center(
          child: new FutureBuilder<Post>(
            future: fetchPost(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return new Text(snapshot.data.title);
              } else if (snapshot.hasError) {
                return new Text("${snapshot.error}");
              }

              // By default, show a loading spinner
              return new CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
// AudioPlayer audioPlayer = AudioPlayer();

// class MyApp extends StatelessWidget {
  
//   @override
//   Widget build(BuildContext context) {
//     //音乐播放
//     play() async{
//         int result = await audioPlayer.play('http://music.163.com/song/media/outer/url?id=451703096.mp3');
//       if (result == 1) {
//         // success
//         print('play success');
//       } else {
//         print('play failed');
//       }
//     }
//     play();
    
//     return MaterialApp(
//      title: 'demo',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: new Scaffold(
//         appBar: new AppBar(
//           title: new Text('welcome to flutter'),
//         ),
//         body: new Center(
//           child: container,
//         ),
//       ),
//     );
//   }
// }

// //  var content;
// //     // 接口请求
// //     void getNet_2() async {
// //     var client = http.Client();
// //     http.Response response = await client.get('https://cnodejs.org/api/v1/topics');
// //     content = response.body;
// //     print(content);
// //     }

// // getNet_2();

// var container = new Container( // grey box
//   child: new Text(
//     content,
//     textAlign: TextAlign.center,
//     style: new TextStyle(
//       fontSize: 24.0,
//       fontWeight: FontWeight.w900,
//       fontFamily: "Georgia",
//     ),
//   ),
//   width: 320.0,
//   height: 240.0,
//   color: Colors.red[100],
// );