
//创建一个类
//用集合包裹起来
// 在instate 中初始化

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weixin/constants.dart';

class NavigationIconViwe {
  BottomNavigationBarItem navigationBarItem;

  NavigationIconViwe({Key key, String title, IconData mIcon, IconData IconData})
      : navigationBarItem = BottomNavigationBarItem(
    icon: Icon(mIcon),
    activeIcon: Icon(IconData),
    title: Text(title),
  );
}

class mBottomNavigationBar extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<mBottomNavigationBar> {
  List<NavigationIconViwe> _navigationIconView;
  int _selectedIndex = 1;
  final _widgetOptions = [
    Text('Index 0: Home'),
    Text('Index 1: Business'),
    Text('Index 2: School'),
  ];

  //初始化数据

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //初始化下面的点击按钮

    _navigationIconView = [
      NavigationIconViwe(
        title: '首页',
        mIcon: IconData(
          0xe608,
          fontFamily: Constants.IconFontFamily,
        ),
        IconData: IconData(
          0xe603,
          fontFamily: Constants.IconFontFamily,
        ),
      ),
      NavigationIconViwe(
        title: '学习',
        mIcon: IconData(
          0xe608,
          fontFamily: Constants.IconFontFamily,
        ),
        IconData: IconData(
          0xe603,
          fontFamily: Constants.IconFontFamily,
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {


    final BottomNavigationBar botNavBar = BottomNavigationBar(
      fixedColor: const Color(AppColors.TabIconActive),
      items: _navigationIconView.map((NavigationIconViwe view) {
        return view.navigationBarItem;
      }).toList(),
      currentIndex: _selectedIndex,
      type: BottomNavigationBarType.fixed,
      onTap:_onItemTapped,
    );



    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("微信")),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      bottomNavigationBar:botNavBar ,
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
