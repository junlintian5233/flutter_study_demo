import 'package:flutter/material.dart';

class MinePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
     return MineStatePage();
  }
}


class MineStatePage extends State<MinePage>{
  @override
  Widget build(BuildContext context) {
    return Center(child: Container(
        color: Colors.orange,
    )
    );
  }

}