import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../config/httpHeaders.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController typeController = TextEditingController();
  
  String showText = '欢迎来到美好人间';

  @override
  Widget build(BuildContext context) {         
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text('美好人间'),),
        // 键盘弹起改为滚动
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                TextField(
                  controller: typeController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    labelText: '美女类似',
                    helperText: '输入类型'
                  ),
                  autofocus: false,
                ),
                RaisedButton(
                  onPressed: (){_choiceAction();},
                  child: Text('选择完成'),
                ),
                Text(
                  // 变量字符
                  showText,
                  // 溢出折叠
                  overflow: TextOverflow.ellipsis,
                  // 最大行数
                  maxLines: 1,
                )
              ],
            ),
          )
        ),
      ),
    );
  }

  void _choiceAction(){
    print('开始选择。。。');
    if(typeController.text.toString()==''){
      showDialog(
        context: context,
        builder: (context)=>AlertDialog(title: Text('不能为空'),)
      );
    } else {
      getHttp(typeController.text.toString()).then((val){
        print(val['data'][0]['id']);
        setState(() {
         showText = val['data'][1]['artistName'].toString(); 
        });
      });
    }
  }

  Future getHttp(String TypeText) async{
    try{
      Response response;
      var data = {'limit':TypeText};
      Dio dio = new Dio();
      dio.options.headers = httpHeaders;
      response = await dio.get('http://10.80.136.135:4000/top/mv',
        queryParameters: data
      );
      return response.data;
    }catch(e){
      print(e);
    }
  }
}
