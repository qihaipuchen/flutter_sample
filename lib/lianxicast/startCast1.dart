import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weixin/constants.dart';

//创建model

class NavigationViewBean {
  BottomNavigationBarItem bottomNavigationBarItem;

  NavigationViewBean(
      {Key key, String title, IconData icon, IconData activeIcon})
      : bottomNavigationBarItem = new BottomNavigationBarItem(
            icon: Icon(icon), activeIcon: Icon(activeIcon), title: Text(title));
}

class bottomViewShow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _bottomViewState();
  }
}

class _bottomViewState extends State<bottomViewShow> {
  List<NavigationViewBean> mListNavigation;

  //创建底层

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //初始化数据
    mListNavigation = [
      NavigationViewBean(
          title: "小宝",
          icon: IconData(
            0xe608,
            fontFamily: Constants.IconFontFamily,
          ),
          activeIcon: IconData(0xe603, fontFamily: Constants.IconFontFamily)),
      NavigationViewBean(
          title: "小宝",
          icon: IconData(
            0xe608,
            fontFamily: Constants.IconFontFamily,
          ),
          activeIcon: IconData(0xe603, fontFamily: Constants.IconFontFamily))
    ];
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar bottomNavigationBar = BottomNavigationBar(
      items: mListNavigation.map((NavigationViewBean mview) {
        return mview.bottomNavigationBarItem;
      }).toList(),
      currentIndex: 1,

    );

    // TODO: implement build
    return Scaffold(

      body:Container(
          child: Text("ds"),
        
      ) ,

      bottomNavigationBar:bottomNavigationBar ,
    );
  }
}
