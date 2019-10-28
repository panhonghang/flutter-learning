import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: MyDrawer(title:'左边'),
        appBar: AppBar(
            title: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            actions: <Widget>[
              Icon(Icons.search),
            ],
        ),
        body: TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}


class MyDrawer extends StatefulWidget {
  MyDrawer({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _Drawer createState() => _Drawer();
}

class _Drawer extends State<MyDrawer>{
  var netImageUrl1 = "http://c.hiphotos.baidu.com/image/pic/item/a8773912b31bb0516a13ec1d387adab44aede0d4.jpg";
  var netImageUrl2 = "https://flutter.io/images/homepage/header-illustration.png";
  var localImageUrl = "images/2.0x/treasure_default_card.png";
  var fileTest = "/storage/emulated/0/cache/111.png";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width/2,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: <Widget>[
            Image(
              //设置imageProvider
              image: AssetImage(localImageUrl),
              //设置图像在宽高范围内的对齐方式
              alignment: Alignment.bottomLeft,
              //设置边缘裁剪形式
//                centerSlice: Rect.fromLTWH(20, 20, 100, 100),
//                centerSlice: Rect.fromLTRB(100, 100, 100, 100),
              //color 与 colorBlendMode 结合使用，用于颜色与每个图像像素混合
              color: Colors.greenAccent,
              colorBlendMode: BlendMode.exclusion,
              // ? 图像过滤器的质量级别
              filterQuality: FilterQuality.high,
              //绘制图像未覆盖的布局边界的任何部分
//                repeat:ImageRepeat.repeat,
//                repeat:ImageRepeat.repeatY,
//                repeat:ImageRepeat.repeatX,
              //设置宽高
              width: 200,
              height: 300,
              //设置图片怎么分布到对应的宽高中
              fit: BoxFit.fill,
            )

          ],

        ),
      ),
    );
  }
}
