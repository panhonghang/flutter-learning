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
                          Text('私人FM',textScaleFactor: .8,style: TextStyle(color: Colors.grey[500]),)
                        ],
                      ),
                    ),
                  ),
                ],
              )
           ),
         ],
       ),
    );
  }
}