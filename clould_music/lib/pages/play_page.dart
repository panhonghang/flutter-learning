import 'package:flutter/material.dart';

class PlayPage extends StatefulWidget {
  @override
  _PlayPageState createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          title: ListTile(
            title: Text('aaa'),
            subtitle: Text('asaa'),
          ),
          actions: <Widget>[
            Icon(Icons.share),
          ],
        ),
      )
    );
  }
}