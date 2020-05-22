import 'package:flutter/material.dart';
import 'Home.dart';
import 'Girls.dart';
import 'Mine.dart';
import 'Category.dart';

class Tabs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TabState();
  }
}

class _TabState extends State<Tabs> {
  int _currentIndex = 0;
  List _pageList = [HomePage(), GirlsPage(), CategoryPage(), MinePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("首页"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text("福利"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            title: Text("分类"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text("我的"),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
          print(index);
        },
      ),
    );
  }
}
