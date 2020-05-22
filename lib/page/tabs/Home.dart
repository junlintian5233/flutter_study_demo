import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
     return HomeStatePage();
  }
}


class HomeStatePage extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('我是标题'),
          subtitle: Text('我是附标题'),
        ),
        ListTile(
          title: Text('我是标题'),
          subtitle: Text('我是附标题'),
        ),
        ListTile(
          title: Text('我是标题'),
          subtitle: Text('我是附标题'),
        ),
      ],
    );
  }

}


