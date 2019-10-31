// import 'package:flutter/material.dart';
// import '../widgets/drawer.dart';
// import '../service/service_method.dart';
// import 'my_page.dart';

// class IndexPage extends StatefulWidget {
//   @override
//   _IndexPageState createState() => _IndexPageState();
// }
 
// class _IndexPageState extends State<IndexPage> {
  
//   String url;
//   String name;
//   int level;
//   int _selectedIndex = 1;

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 4,
//       child: Scaffold(
//         drawer: MyDrawer(url:url,name: name,level: level,),
//         bottomNavigationBar: BottomNavigationBar( // 底部导航
//               items: <BottomNavigationBarItem>[
//                 BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
//                 BottomNavigationBarItem(icon: Icon(Icons.business), title: Text('Business')),
//                 BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('School')),
//               ],
//               currentIndex: _selectedIndex,
//               fixedColor: Colors.blue,
//               onTap: _onItemTapped,
//             ),
//         appBar: AppBar(
//             backgroundColor: Colors.red,
//             titleSpacing: 0.0,
//             // 右边抽屉
//             leading: Builder(
//                   builder: (BuildContext context){
//                     return IconButton(
//                         icon: Icon(Icons.menu,color: Colors.white,),
//                         onPressed: (){
//                           getHomePageContent().then((res){
//                             print(res['level']);
//                             setState(() {
//                              url = res['profile']['avatarUrl']; 
//                              name = res['profile']['nickname'];
//                              level = res['level'];
//                             });
//                           });
//                           Scaffold.of(context).openDrawer();
//                         }
//                     );
//                   }
//               ),
//             // 居中
//             centerTitle: true,
//             title: TabBar(
//               isScrollable: true,
//               indicatorColor: Color.fromRGBO(1, 1, 1, 0),
//               tabs: [
//                 Tab(text: '我的',),
//                 Tab(text: '发现',),
//                 Tab(text: '云村',),
//                 Tab(text: '视频',),
//               ],
//               labelStyle: TextStyle(fontSize: 18),
//               labelColor: Colors.white,
//               unselectedLabelStyle: TextStyle(fontSize: 16),
//               unselectedLabelColor: Colors.white60,
//             ),
//             actions: <Widget>[
//               IconButton(
//                 icon: Icon(Icons.search,color: Colors.white,),
//                 onPressed: (){

//                 },
//               )
//             ],
//         ),
//         body: TabBarView(
//           children: [
//             MyPage(),
//             Icon(Icons.directions_transit),
//             Icon(Icons.ac_unit),
//             Icon(Icons.directions_bike),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  void initState() {
    super.initState();
  }
    AudioPlayer audioPlayer = AudioPlayer();
   play() async {
      int result = await audioPlayer.play('https://m7.music.126.net/20191031184129/94d25c082b6298dfbc6cc1fd6bcb71c8/ymusic/0fd6/4f65/43ed/a8772889f38dfcb91c04da915b301617.mp3');
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
    return Container(
      child: Row(
        children: <Widget>[
          RaisedButton(
            child: Text("播放"),
              onPressed: () {
                play();
              },
          ),
          RaisedButton(
            child: Text('暂停'),
              onPressed: () {
                pause();
              },
          ),
        ],
      )
    );
  }
}