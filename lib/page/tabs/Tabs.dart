import 'package:flutter/material.dart';
import 'Home.dart';
import 'Girls.dart';
import 'Navigation.dart';
import 'Category.dart';

class Tabs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TabState();
  }
}

class _TabState extends State<Tabs> {
  int _currentIndex = 0;
  List _pageList = [HomePage(), CategoryPage(), GirlsPage(), NavigationPage()];
  List _titles = ["首页", "分类", "福利", "导航"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this._titles[this._currentIndex]),
        backgroundColor: Colors.red,
      ),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, //当前选中的index
        selectedItemColor: Colors.red, //选择的颜色
        unselectedItemColor: Colors.grey, //未选择的颜色
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(this._titles[0]),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text(_titles[1]),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            title: Text(this._titles[2]),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text(this._titles[3]),
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
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            MyDrawerHeade(),
            DrawerItme(this._projectPage, 'images/ic_nav_homepage.png', '项目主页'),
            Divider(height: 1),
            DrawerItme(this._download, 'images/ic_nav_scan.png', '扫码下载'),
            Divider(height: 1),
            DrawerItme(this._aboutUs, 'images/ic_nav_about.png', '关于'),
            Divider(height: 1),
            DrawerItme(this._exit, 'images/ic_nav_exit.png', '退出应用'),
            Divider(height: 1),
          ],
        ),
      ),
    );
  }

  _projectPage() {
    print('_projectPage');
  }

  _download() {
    print('_download');
  }

  _aboutUs() {
    print('_aboutUs');
  }

  _exit() {
    print('_exit');
    Navigator.pop(context);
  }
}

class MyDrawerHeade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        Expanded(
          child: UserAccountsDrawerHeader(
            accountName: Text("君之天"),
            accountEmail: Text("tianjun5233@163.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1590215220065&di=4def1b5404154349c7378d0a7d962a1c&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201310%2F13%2F20131013090820_zuQPw.thumb.700_0.jpeg'),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1590203989&di=c21d68967c48aea62775f95f34019cb7&src=http://attach.bbs.miui.com/forum/month_1012/10120514509c7244b23f4a2fa5.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class DrawerItme extends StatelessWidget {
  var _onTap;
  var _assetImage;
  var _itemName;

  DrawerItme(Function() _onTap, String _assetImage, String _itemName) {
    this._onTap = _onTap;
    this._assetImage = _assetImage;
    this._itemName = _itemName;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      child: Row(
        children: <Widget>[
          Padding(
            child: Image.asset(
              _assetImage,
              height: 25,
              width: 25.0,
            ),
            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
          ),
          Text(_itemName),
          Expanded(
            child: Text(''),
          ),
          Padding(
            child: Image.asset(
              'images/home_arrow_right_gray.png',
              height: 25,
              width: 25.0,
            ),
            padding: EdgeInsets.fromLTRB(15, 5, 10, 5),
          ),
        ],
      ),
      onTap: _onTap,
    );
  }
}
