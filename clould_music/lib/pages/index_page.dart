import 'package:cloud_music/pages/play_page.dart';
import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import '../service/service_method.dart';
import 'my_page.dart';
import 'package:audioplayers/audioplayers.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}
 
class _IndexPageState extends State<IndexPage> {
  
  String url;
  String name;
  int level;

  //底部
  List songList = [];

  bool flag = true;

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

  @override
  Widget build(BuildContext context) {

    if(songList.length < 1){
      getSingerSong().then((res){
        print(res['hotSongs'][0]['name']);
        setState(() {
          songList = res['hotSongs']; 
        });
      });
    }

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: MyDrawer(url:url,name: name,level: level,),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            width: 100,
            height: 60,
            color: Colors.white,
            child: RaisedButton(
              color: Colors.white,
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => PlayPage()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 200,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 40,
                          height: 40,
                          margin: EdgeInsets.only(right: 20),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(songList[0]['al']['picUrl']),
                            radius: 10.0,
                          ),
                        ),
                        Container(
                          height: 60,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                            Text(songList[0]['name']),
                            Text(songList[0]['ar'][0]['name'],textScaleFactor: .8,),
                          ],),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.music_video),
                        onPressed: (){
                          if(flag){
                            flag = !flag;
                            getSongUrl(210049).then((res){
                              //  因为http 安卓8以上不支持
                              print(res['data'][0]['url'].substring(4));
                              play('https${res['data'][0]['url'].substring(4)}');
                            });
                          } else {
                            flag = !flag;
                            pause();
                          }
                        },
                      ),
                        Icon(Icons.menu)
                      ],
                    ),
                  ),
                ],
              )    
            ),
          )
        ),
        appBar: AppBar(
            backgroundColor: Colors.red,
            titleSpacing: 0.0,
            // 右边抽屉
            leading: Builder(
                  builder: (BuildContext context){
                    return IconButton(
                        icon: Icon(Icons.menu,color: Colors.white,),
                        onPressed: (){
                          getHomePageContent().then((res){
                            print(res['level']);
                            setState(() {
                             url = res['profile']['avatarUrl']; 
                             name = res['profile']['nickname'];
                             level = res['level'];
                            });
                          });
                          Scaffold.of(context).openDrawer();
                        }
                    );
                  }
              ),
            // 居中
            centerTitle: true,
            title: TabBar(
              isScrollable: true,
              indicatorColor: Color.fromRGBO(1, 1, 1, 0),
              tabs: [
                Tab(text: '我的',),
                Tab(text: '发现',),
                Tab(text: '云村',),
                Tab(text: '视频',),
              ],
              labelStyle: TextStyle(fontSize: 18),
              labelColor: Colors.white,
              unselectedLabelStyle: TextStyle(fontSize: 16),
              unselectedLabelColor: Colors.white60,
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search,color: Colors.white,),
                onPressed: (){

                },
              )
            ],
        ),
        body: TabBarView(
          children: [
            MyPage(),
            Icon(Icons.directions_transit),
            Icon(Icons.ac_unit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
