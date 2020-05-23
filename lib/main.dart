import 'package:flutter/material.dart';
import './page/tabs/Tabs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
      debugShowCheckedModeBanner: false,
    );
  }
}
