import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import '../service/service_method.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String url = 'a';
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: MyDrawer(),
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
                            print('aaaaa$res');
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
                onPressed: (){},
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