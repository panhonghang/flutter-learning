import 'package:flutter/material.dart';
// import 'pages/home_screen.dart';
// import 'pages/email_screen.dart';
// import 'pages/pages_screen.dart';
// import 'pages/airplay_screen.dart';

class Product{
  final String title;
  final String description;
  Product(this.title , this.description);
}

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
        //在主体的中间区域，添加一个hello world 的文本
        body:Center(          
          // child: BottomNavigationWidget()
          child: FirstScreen(),
        ),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(title:Text('导航页面')),
      body:Center(
        child:RaisedButton(
          child:Text('查看商品详情页面'),
          onPressed: (){
            Navigator.push(context,new  MaterialPageRoute(
              builder:(context) =>new SecondScreen())
            );
          },
        )
      )
    );
  }
}

class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(title:Text('技术胖商品详情页')),
      body:Center(child:RaisedButton(
        child:RaisedButton(
          child:Text('返回'),
          onPressed: (){
            Navigator.pop(context);
          },
        ), onPressed: () {},
      ))
    ); 
  }
}

// class ProductList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
      
//     );
//   }
// }



// /* 底部导航 */
// class BottomNavigationWidget extends StatefulWidget {
//   _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
// }

// class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
//   final _BottomNavigationColor = Colors.blue;
//   int _currentIndex = 0;
//   List<Widget> list = List();

//   @override
//   void initState(){
//     list
//       ..add(HomeScreen())
//       ..add(EmailScreen())
//       ..add(PagesScreen())
//       ..add(AirplayScreen());
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//      return Scaffold(
//        body: list[_currentIndex],
//        bottomNavigationBar: BottomNavigationBar(
//          items: [
//            BottomNavigationBarItem(
//              icon:Icon(
//                Icons.home,
//                color:_BottomNavigationColor,
//              ),
//              title:Text(
//                'Home',
//                style:TextStyle(color:_BottomNavigationColor)
//              )
//            ),
//            BottomNavigationBarItem(
//              icon:Icon(
//                Icons.email,
//                color:_BottomNavigationColor,
//              ),
//              title:Text(
//                'Email',
//                style:TextStyle(color:_BottomNavigationColor)
//              )
//            ),
//            BottomNavigationBarItem(
//              icon:Icon(
//                Icons.pages,
//                color:_BottomNavigationColor,
//              ),
//              title:Text(
//                'Pages',
//                style:TextStyle(color:_BottomNavigationColor)
//              )
//            ),
//            BottomNavigationBarItem(
//              icon:Icon(
//                Icons.airplay,
//                color:_BottomNavigationColor,
//              ),
//              title:Text(
//                'AipPlay',
//                style:TextStyle(color:_BottomNavigationColor)
//              )
//            ),
//          ],
//          currentIndex:_currentIndex,
//          onTap:(int index){
//            print(index);
//            setState((){
//              _currentIndex= index;
//            });
//          },
//          type:BottomNavigationBarType.fixed
//        ),
//      );
//   }
// }