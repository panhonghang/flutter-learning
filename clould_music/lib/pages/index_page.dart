import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import '../service/service_method.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  String url = 'http://p1.music.126.net/_f8R60U9mZ42sSNvdPn2sQ==/109951162868126486.jpg';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: MyDrawer(url:url),
        appBar: AppBar(
            backgroundColor: Colors.red,
            titleSpacing: 0.0,
            // 右边抽屉
            leading: Builder(
                  builder: (BuildContext context){
                    return IconButton(
                        icon: Icon(Icons.menu,color: Colors.white,),
                        onPressed: (){
                          getHomePageContent().then((res){
                            var a = res['profile'];
                            print('aaaaa$a');
                            // setState(() {
                            //  url = a; 
                            // });
                          });
                          Scaffold.of(context).openDrawer();
                        }
                    );
                  }
              ),
            // 居中
            centerTitle: true,
            title: TabBar(
              isScrollable: true,
              indicatorColor: Color.fromRGBO(1, 1, 1, 0),
              tabs: [
                Tab(text: '我的',),
                Tab(text: '发现',),
                Tab(text: '云村',),
                Tab(text: '视频',),
              ],
              labelStyle: TextStyle(fontSize: 18),
              labelColor: Colors.white,
              unselectedLabelStyle: TextStyle(fontSize: 16),
              unselectedLabelColor: Colors.white60,
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search,color: Colors.white,),
                onPressed: (){

                },
              )
            ],
        ),
        body: TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.ac_unit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}