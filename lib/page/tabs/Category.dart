import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
     return CategoryStatePage();
  }
}


class CategoryStatePage extends State<CategoryPage>{
  @override
  Widget build(BuildContext context) {
    return Center(child: Container(
        color: Colors.yellow,
    )
    );
  }

}