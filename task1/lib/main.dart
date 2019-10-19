import 'package:flutter/material.dart';
//主函数（入口函数），下面我会简单说说Dart的函数
void main() =>runApp(MyApp());
// 声明MyApp类
class MyApp extends StatelessWidget{
  //重写build方法
  @override
  Widget build(BuildContext context){
    //返回一个Material风格的组件
   return MaterialApp(
      title:'Welcome to Flutteraa',
      home:Scaffold(
        //创建一个Bar，并添加文本
        appBar:AppBar(
          title:Text('Welcome to Flutter'),
        ),
        //在主体的中间区域，添加一个hello world 的文本
        body:Center(

          /* text 组件练习 */
          // child:Text(
          //   'Hello World 杀杀杀杀杀杀杀杀杀杀杀杀杀杀杀杀杀杀杀杀杀杀杀杀水水水水水水水水',
          //   textAlign: TextAlign.left,//设置对齐方式
          //   maxLines: 1,
          //   overflow: TextOverflow.ellipsis,//超出省略
          //   style: TextStyle(
          //     fontSize: 20,
          //     color: Color.fromRGBO(255, 9, 0, 100),
          //     decoration: TextDecoration.underline,//下划线
          //     decorationStyle: TextDecorationStyle.dashed,//下划线样式 虚线
          //   ),
          // ),

          /* container 组件练习 */
          // child: Container(
          //   child: new Text(
          //       'container 组件练习', 
          //       textAlign: TextAlign.center,
          //       style: TextStyle(
          //         fontSize: 24,
          //         color: Color.fromRGBO(255, 0, 0, 10),
          //       )
          //     ),
          //   alignment: Alignment.center,//在组件内的对齐方式
          //   width: 400,
          //   height: 400,
          //   //color: Colors.blue,//设置背景颜色
          //   padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),//设置padding的值 Left Top Right Button
          //   margin: const EdgeInsets.all(10),//设置外边距为10
          //   //decoration是 container 的修饰器，主要的功能是设置背景和边框。
          //   decoration: new BoxDecoration(
          //     gradient: const LinearGradient(
          //       colors: [Colors.lightBlue,Colors.lightGreen,Colors.purple],//设置渐渐变
          //     ),
          //     border: Border.all(width: 2.0,color: Colors.red), //
          //   ),
          // ),

          /* image 组件练习 */
          // child: Container(
          //   child: new Image.network(
          //     'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
          //     scale: 1,
          //     fit: BoxFit.fill,//图片铺满 
          //     /* 
          //     BoxFit.fill:全图显示，图片会被拉伸，并充满父容器。
          //     BoxFit.contain:全图显示，显示原比例，可能会有空隙。
          //     BoxFit.cover：显示可能拉伸，可能裁切，充满（图片要充满整个容器，还不变形）。
          //     BoxFit.fitWidth：宽度充满（横向充满），显示可能拉伸，可能裁切。
          //     BoxFit.fitHeight ：高度充满（竖向充满）,显示可能拉伸，可能裁切。
          //     BoxFit.scaleDown：效果和contain差不多，但是此属性不允许显示超过源图片大小，可小不可大。
          //      */
          //     color: Colors.lightBlue,//设置背景 与colorBlendMode 组合使用产生 mask效果
          //     colorBlendMode: BlendMode.darken,//
          //     repeat: ImageRepeat.repeat,//设置图片repeat
          //   ),
          //   width: 300,
          //   height: 200,
          //   color: Colors.lightBlue,
          // ),

          /* listview 组件使用 */
          // child: new ListView(
          //   padding: const EdgeInsets.all(50),
          //   children: <Widget>[
          //     //listtittle
          //     new ListTile(
          //       leading:new Icon(Icons.account_balance),
          //       title:new Text('account_balance')
          //     ),

          //     new ListTile(
          //       leading: new Icon(Icons.access_time),//图标
          //       title:new Text('access_time'),
          //     ),
          //     //第一行
          //     Container(
          //       height: 50,
          //       color: Colors.lightBlue,
          //       margin: EdgeInsets.fromLTRB(0,0,0,10),
          //       child: const Center(
          //         child: Text(
          //           '第一行',
          //           textAlign: TextAlign.center,
          //           style: TextStyle(
          //             color: Colors.red,
          //             fontSize: 20,
          //           ),
          //         )
          //       ),
          //     ),
          //   //第二行
          //     Container(
          //       height: 50,
          //       color: Colors.lightBlue,
          //       margin: EdgeInsets.fromLTRB(0,0,0,10),
          //       child: const Center(
          //         child: Text(
          //           '第二行',
          //           textAlign: TextAlign.center,
          //           style: TextStyle(
          //             color: Colors.red,
          //             fontSize: 20,
          //           ),
          //         )
          //       ),
          //     ),
          //     new Image.network(
          //       'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
          //       scale: 1,
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}