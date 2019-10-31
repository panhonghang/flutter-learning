import 'package:dio/dio.dart';
import 'dart:async';
import 'dart:io';
import '../config/serverce_url.dart';

// 获取用户消息
Future getHomePageContent() async{
  try{
    print('开始获取数据...............');
    Response response;
    Dio dio = new Dio();
    
    dio.options.contentType = ContentType.parse('application/x-www-form-urlencoded');
    response = await dio.get(servicePath['userdetial']);

    if(response.statusCode==200){
      return response.data;
    }else{
      throw Exception('后端接口出现异常，请检测代码和服务器情况.........');
    }
  }catch(e){
    return print('ERROR:======>$e');
  }
}
//歌单消息
Future getPlayList() async{
  try{
    print('开始获取数据...............');
    Response response;
    response = await new Dio().get(servicePath['playlist']);

    if(response.statusCode==200){
      return response.data;
    }else{
      throw Exception('后端接口出现异常，请检测代码和服务器情况.........');
    }
  }catch(e){
    return print('ERROR:======>$e');
  }
}
// 歌手的全部单曲
Future getSingerSong() async{
  try{
    print('开始获取数据...............');
    Response response;
    response = await new Dio().get(servicePath['artists']);

    if(response.statusCode==200){
      return response.data;
    }else{
      throw Exception('后端接口出现异常，请检测代码和服务器情况.........');
    }
  }catch(e){
    return print('ERROR:======>$e');
  }
}
// 歌曲url
Future getSongUrl(int id) async{
  try{
    print('开始获取数据...............');
    Response response;
    response = await new Dio().get('${servicePath['songurl']}$id');

    if(response.statusCode==200){
      return response.data;
    }else{
      throw Exception('后端接口出现异常，请检测代码和服务器情况.........');
    }
  }catch(e){
    return print('ERROR:======>$e');
  }

}