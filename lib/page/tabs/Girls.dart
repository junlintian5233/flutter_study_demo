import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

List _images = [
  'http://gank.io/images/d6bba8cf5b8c40f9ad229844475e9149',
  'http://gank.io/images/d237f507bf1946d2b0976e581f8aab9b',
  'http://gank.io/images/25d3e3db2c1248bb917c09dc4f50a46f',
  'http://gank.io/images/19c99c447e0a40a6b3ff89951957cfb1',
  'http://gank.io/images/f0c192e3e335400db8a709a07a891b2e',
  'http://gank.io/images/bdb35e4b3c0045c799cc7a494a3db3e0'
];

class GirlsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return GirlsStatePage();
  }
}

class GirlsStatePage extends State<GirlsPage> {
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
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 10.0, crossAxisSpacing: 10.0),
        itemCount: _images.length,
        itemBuilder: (context, index) {
          return _createGridViewItem(_images[index]);
        });
  }
}

_createGridViewItem(String url) {
  return Image.network(url, height: 200, fit: BoxFit.cover);
}
