import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  // 父组件传来的值 头像 名字 等级
  final String url;
  final String name;
  final int level;

  MyDrawer({
    Key key,
    this.url,
    this.name,
    this.level
    }):super(key:key);
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      child: Drawer(
              child: ListView(
                // 设置上边距为0
                padding: EdgeInsets.zero,
                children: <Widget>[
                  // 头部用户信息
                  Container(
                    height: 200,
                    color: Colors.grey[200], 
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // 头像
                        Container(
                          width: 70,
                          height: 70,
                          margin: EdgeInsets.only(bottom: 10,top: 20),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(widget.url),
                            radius: 10.0,
                          ),
                        ),
                        // 名字与等级
                        Container(
                          height: 40,
                          padding: EdgeInsets.only(top: 10),
                          child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: 100,
                              height: 20,
                              child: Row(
                                children: <Widget>[
                                  Text(widget.name), 
                                  Container(
                                    height: 16,
                                    width: 40,
                                    // 设置居中
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text('Lv.${widget.level}'),
                                    // 装饰器 修饰圆角
                                    decoration: BoxDecoration(
                                      color: Colors.grey[350],
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 60,
                              height: 20,
                              padding: EdgeInsets.only(left: 6,right: 6),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Icon(
                                    Icons.cached,size: 15,
                                    color: Colors.white,
                                    ),
                                  Text(
                                    '签到',
                                     textScaleFactor: 0.9,
                                     style: TextStyle(
                                       color: Colors.white,
                                     ),
                                     ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20)
                                )
                              ),
                            )
                          ],
                        ),
                        )
                      ],
                    )
                  ),
                  // 各类消息 
                  ListTile(
                    leading: Icon(Icons.power_settings_new),
                    title: Text('演出'),
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