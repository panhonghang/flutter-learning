import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    getHttp();
    return Scaffold(
      body:Center(
        child: Text('商城首页'),
      )
    );
  }

  void getHttp() async{
      try{
        Response response;
        response = await Dio().get('https://github.com/flutter/flutter/issues/23045');
        print(response);
      }catch(e){
        return print(e);
      }
    }
}