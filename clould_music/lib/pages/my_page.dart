import 'package:flutter/material.dart';
import '../service/service_method.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    // getPlayList().then((key){
    //   print(key);
    // });
    return Container(
       child: Column(
         children: <Widget>[
           Container(
             height: 100,
             decoration: BoxDecoration(
               color: Colors.red,
              //  border: Border.all(,color: Colors.red)
             ),
             child: Row(
               children: <Widget>[
                 Text('cc')
               ],
             ),
           )
         ],
       ),
    );
  }
}