import 'package:flutter/material.dart';
import '../service/service_method.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage>{
  List formlist = [];

  @override
  initState(){
    super.initState();
  }

  Widget build(BuildContext context) { 

    List<Widget> song_list = [];
    if(formlist.length < 1){
       getPlayList().then((key){
        setState(() {
        formlist = key['playlist'];        
        });
      });
    }
  // 遍历添加
    for(var key in formlist){
      song_list.add(
        ListTile(
          leading: Container(
            // 图片圆角
            decoration: ShapeDecoration(
                image: DecorationImage(
                  image: NetworkImage(key['coverImgUrl']),
                  fit: BoxFit.fitWidth),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.circular(8))),
            width: 50,
            height: 50,
          ),
          title: Text(key['name']),
          subtitle: Text('${key['trackCount']}首',textScaleFactor: .9,),
        )
      );
    }   

    return ListView(
      children: <Widget>[
        Container(
             height: 100,
             decoration: BoxDecoration(
               border: Border(bottom: BorderSide(width: .5,color: Colors.grey[700]))
             ),
             child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 80.0,
                    alignment: Alignment.center,
                    child: Container(
                      width: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 45,
                            width: 45,
                            margin: EdgeInsets.only(bottom: 10),
                            child: Icon(Icons.ac_unit,color: Colors.white),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(Radius.circular(60)),
                            ),
                          ),
                          Text('私人FM',textScaleFactor: .8,style: TextStyle(color: Colors.grey[500]),)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 80.0,
                    alignment: Alignment.center,
                    child: Container(
                      width: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 45,
                            width: 45,
                            margin: EdgeInsets.only(bottom: 10),
                            child: Icon(Icons.ac_unit,color: Colors.white),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(Radius.circular(60)),
                            ),
                          ),
                          Text('古典专区',textScaleFactor: .8,style: TextStyle(color: Colors.grey[500]),)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 80.0,
                    alignment: Alignment.center,
                    child: Container(
                      width: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 45,
                            width: 45,
                            margin: EdgeInsets.only(bottom: 10),
                            child: Icon(Icons.ac_unit,color: Colors.white),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(Radius.circular(60)),
                            ),
                          ),
                          Text('最嗨电音',textScaleFactor: .8,style: TextStyle(color: Colors.grey[500]),)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 80.0,
                    alignment: Alignment.center,
                    child: Container(
                      width: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 45,
                            width: 45,
                            margin: EdgeInsets.only(bottom: 10),
                            child: Icon(Icons.ac_unit,color: Colors.white),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(Radius.circular(60)),
                            ),
                          ),
                          Text('AVG专区',textScaleFactor: .8,style: TextStyle(color: Colors.grey[500]),)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 80.0,
                    alignment: Alignment.center,
                    child: Container(
                      width: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 45,
                            width: 45,
                            margin: EdgeInsets.only(bottom: 10),
                            child: Icon(Icons.ac_unit,color: Colors.white),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(Radius.circular(60)),
                            ),
                          ),
                          Text('Satl空间',textScaleFactor: .8,style: TextStyle(color: Colors.grey[500]),)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 80.0,
                    alignment: Alignment.center,
                    child: Container(
                      width: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 45,
                            width: 45,
                            margin: EdgeInsets.only(bottom: 10),
                            child: Icon(Icons.ac_unit,color: Colors.white),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(Radius.circular(60)),
                            ),
                          ),
                          Text('私藏推荐',textScaleFactor: .8,style: TextStyle(color: Colors.grey[500]),)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 80.0,
                    alignment: Alignment.center,
                    child: Container(
                      width: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 45,
                            width: 45,
                            margin: EdgeInsets.only(bottom: 10),
                            child: Icon(Icons.ac_unit,color: Colors.white),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(Radius.circular(60)),
                            ),
                          ),
                          Text('音乐交友',textScaleFactor: .8,style: TextStyle(color: Colors.grey[500]),)
                        ],
                      ),
                    ),
                  ),
                ],
              )
           ),
        Container(
             height: 300,
             child: ListView(
               padding: EdgeInsets.only(left: 6,top: 10,bottom: 10),
               children: <Widget>[
                 ListTile(
                   leading: Icon(Icons.music_video),
                   title: Container(
                     height: 30,
                     margin: EdgeInsets.only(top: 8),
                     child: Text('本地音乐'),
                     decoration: BoxDecoration(
                       border: Border(bottom: BorderSide(width: .3))
                     ),
                   )
                 ),
                 ListTile(
                   leading: Icon(Icons.play_arrow),
                   title: Container(
                     height: 30,
                     margin: EdgeInsets.only(top: 8),
                     child: Text('最近播放'),
                     decoration: BoxDecoration(
                       border: Border(bottom: BorderSide(width: .3))
                     ),
                   )
                 ),
                 ListTile(
                   leading: Icon(Icons.cloud_download),
                   title: Container(
                     height: 30,
                     margin: EdgeInsets.only(top: 8),
                     child: Text('下载管理'),
                     decoration: BoxDecoration(
                       border: Border(bottom: BorderSide(width: .3))
                     ),
                   )
                 ),
                 ListTile(
                   leading: Icon(Icons.video_library),
                   title: Container(
                     height: 30,
                     margin: EdgeInsets.only(top: 8),
                     child: Text('我的电台'),
                     decoration: BoxDecoration(
                       border: Border(bottom: BorderSide(width: .3))
                     ),
                   )
                 ),
                 ListTile(
                   leading: Icon(Icons.save),
                   title: Container(
                     height: 30,
                     margin: EdgeInsets.only(top: 8),
                     child: Text('我的收藏'),
                     decoration: BoxDecoration(
                       border: Border(bottom: BorderSide(width: .3))
                     ),
                   )
                 ),
               ],
             )
           ),
        Container(
          child: Column(
            children: song_list
          )
        )
      ],
    );
  }
}