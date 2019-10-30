const serviceUrl= 'http://47.100.167.231:4000/';//此端口针对于正版用户开放，可自行fiddle获取。
const servicePath={
  'login': serviceUrl+'login/cellphone?phone=13617698467&password=9872014', // 登陆接口
  'userdetial': serviceUrl+'user/detail?uid=533788348',//用户信息接口
  'playlist': serviceUrl+'user/playlist?uid=533788348',//歌单接口
};