import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'car_page.dart';
import 'category_page.dart';
import 'home_page.dart';
import 'member_page.dart';


class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  // 底部导航的元素列表
  final List<BottomNavigationBarItem> bottomTabs =[
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home),
      title: Text('首页'),
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.search),
      title: Text('分类'),
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.shopping_cart),
      title: Text('购物车'),
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.profile_circled),
      title: Text('会员中心'),
    ),
  ];

// 展示页
  final List tabBody = [
    HomePage(),
    CarPage(),
    CategoryPage(),
    MemberPage()
  ];
// 初始值
  int current = 0;
  var currentPage;

  @override
  // 与react的state用法一样
  void initState() {
    // 初始值
    currentPage=tabBody[current];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
      // 底部导航
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: current,
        items: bottomTabs,
        // 点击事件
        onTap: (index){
          // 修改state
          setState(() {
           current = index;
           currentPage = tabBody[current];
          });
        },
      ),
      body: currentPage,
    );
  }
}