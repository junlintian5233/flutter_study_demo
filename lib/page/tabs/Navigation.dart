import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
     return NavigationStatePage();
  }
}


class NavigationStatePage extends State<NavigationPage>{
  @override
  Widget build(BuildContext context) {
    return Center(child: Container(
        color: Colors.orange,
    )
    );
  }

}