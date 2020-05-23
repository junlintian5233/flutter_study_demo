import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

class GirlsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GirlsStatePage();
  }
}

class GirlsStatePage extends State<GirlsPage> {
  List _images = [];

  @override
  void initState() {
    super.initState();
    this._getData();
  }

  _getData() async {
    var apiUrl =
      'https://gank.io/api/v2/data/category/Girl/type/Girl/page/1/count/10';
    Response result = await Dio().get(apiUrl);
    print(result.data);
    print(result.data is String);

    setState(() {
      _images = result.data['data'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
          ),
          itemCount: _images.length,
          itemBuilder: (context, index) {
            return _createGridViewItem(_images[index]['url']);
          }),
    );
  }
}

_createGridViewItem(String url) {
  return Image.network(
    url,
    height: 200,
    fit: BoxFit.cover,
  );
}
