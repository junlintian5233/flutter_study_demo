import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:dio/dio.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeStatePage();
  }
}

class HomeStatePage extends State<HomePage> {
  List _banner = [];

  _initData() async {
    Response result = await Dio().get('https://gank.io/api/v2/banners');
    setState(() {
      _banner:
      json.decode(result.data);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //  Swiper(
        //   itemCount: _banner.length,
        //   itemBuilder: (context, index) {
        //     return Image.network(
        //       _banner[index]['url'],
        //       fit: BoxFit.cover,
        //     );
        //   },
        //   onTap: (index){
        //     print('点击了第$index');
        //   },
        // ),
        Expanded(
          child: ListView(
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
          ),
        ),
      ],
    );
  }
}
