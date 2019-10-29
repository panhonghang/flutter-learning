import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  final String url;
  MyDrawer({Key key,this.url}):super(key:key);
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    print(widget.url);
    print('aaaaaa');
    return Container(
      child: Drawer(
              child: ListView(
                // 设置上边距为0
              padding: EdgeInsets.zero,
                children: <Widget>[
                  Container(
                    height: 200,
                    child: Container(
                      color: Colors.grey[300],
                      child: Image.network(widget.url),
                    )
                  ),
                  ListTile(
                    leading: Icon(Icons.power_settings_new),
                    title: new Text('演出'),
                  ),
                  ListTile(
                    leading: Icon(Icons.power_settings_new),
                    title: new Text('商城'),
                  ),
                  ListTile(
                    leading: Icon(Icons.power_settings_new),
                    title: new Text('附近的人'),
                  ),
                  ListTile(
                    leading: Icon(Icons.power_settings_new),
                    title: new Text('游戏推荐'),
                  ),
                  ListTile(
                    leading: Icon(Icons.power_settings_new),
                    title: new Text('口袋彩铃'),
                  ),
                  ListTile(
                    leading: Icon(Icons.power_settings_new),
                    title: new Text('创作中心'),
                  ),
                  ListTile(
                    leading: Icon(Icons.power_settings_new),
                    title: new Text('我的订单'),
                  ),
                  ListTile(
                    leading: Icon(Icons.power_settings_new),
                    title: new Text('定时定时播放'),
                  ),
                  ListTile(
                    leading: Icon(Icons.power_settings_new),
                    title: new Text('扫一扫'),
                  ),
                  ListTile(
                    leading: Icon(Icons.power_settings_new),
                    title: new Text('音乐闹钟'),
                  ),
                  ListTile(
                    leading: Icon(Icons.power_settings_new),
                    title: new Text('音乐云盘'),
                  ),
                  ListTile(
                    leading: Icon(Icons.power_settings_new),
                    title: new Text('在线听音乐'),
                  ),
                  ListTile(),
                  ListTile(
                    leading: Icon(Icons.power_settings_new),
                    title: new Text('优惠卷'),
                  ),
                  ListTile(
                    leading: Icon(Icons.power_settings_new),
                    title: new Text('青少年模式'),
                  ),
                  ListTile(),
                ],
              ),
            ),
    );
  }
}