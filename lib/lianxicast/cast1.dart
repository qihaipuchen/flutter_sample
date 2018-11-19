import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weixin/constants.dart';

class NavigationViewIconData {
  BottomNavigationBarItem bottomNavigationBarItem;

  NavigationViewIconData(
      {Key key, IconData icon, IconData iconActive, String title})
      : bottomNavigationBarItem = new BottomNavigationBarItem(
            icon: Icon(icon), activeIcon: Icon(iconActive), title: Text(title));
}

/**
 * 声明Bean  类
 */
class NavigationDataView {
  BottomNavigationBarItem bottomNavigationBarItem1;

  NavigationDataView(
      {Key, key, String title, IconData icon, IconData activeIcon})
      : bottomNavigationBarItem1 = new BottomNavigationBarItem(
            icon: Icon(icon), activeIcon: Icon(activeIcon), title: Text(title));
}

/**
 * 生命bean类
 */
class NavigationDataView2 {
  BottomNavigationBarItem bottomNavigationBarItem;

  NavigationDataView2(
      {Key key, String title, IconData icon, IconData activeIcon})
      : bottomNavigationBarItem = new BottomNavigationBarItem(
            icon: Icon(icon), title: Text(title), activeIcon: Icon(activeIcon));
}

class NavigationViewContext {
  BottomNavigationBarItem bottomNavigationBarItem;

  NavigationViewContext({Key key, String title, IconData icon, IconData active})
      : bottomNavigationBarItem = new BottomNavigationBarItem(
            icon: Icon(icon), title: Text(title), activeIcon: Icon(active));
}

/**
 * 声明bEAN  实体类
 */
class NavigationViewData {
  BottomNavigationBarItem bottomNavigationBarItem;

  NavigationViewData(
      {Key key, String title, IconData icon, IconData activeIcon})
      : bottomNavigationBarItem = new BottomNavigationBarItem(
            icon: Icon(icon), activeIcon: Icon(activeIcon), title: Text(title));
}

class cast1 extends StatefulWidget {
  @override
  _leave createState() => _leave();
}

class _leave extends State<cast1> {
  List<NavigationViewData> _navigationIconView;

  //初始化数据

  @override
  void initState() {
    //初始化数据填空数据
    _navigationIconView = [
      NavigationViewData(
          title: "小宝",
          icon: IconData(
            0xe608,
            fontFamily: Constants.IconFontFamily,
          ),
          activeIcon: IconData(
            0xe603,
            fontFamily: Constants.IconFontFamily,
          )),
      NavigationViewData(
          title: "小花",
          icon: IconData(
            0xe603,
            fontFamily: Constants.IconFontFamily,
          ),
          activeIcon: IconData(
            0xe608,
            fontFamily: Constants.IconFontFamily,
          ))
    ];
//初始化
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

/*
    final BottomNavigationBar botNavBar = BottomNavigationBar(
      fixedColor: const Color(AppColors.TabIconActive),
      items: _navigationIconView.map((NavigationViewData view) {
        return view.bottomNavigationBarItem;
      }).toList(),
      currentIndex: _selectedIndex,
      type: BottomNavigationBarType.fixed,

    );

*/

/*    final BottomNavigationBar bottomNavigationBar = BottomNavigationBar(
        items: _navigationIconView.map((NavigationViewData view) {
      return view.bottomNavigationBarItem;
    }).toList(),
    
    currentIndex: 1,
    );*/
    final BottomNavigationBar bottomNavigationBar = BottomNavigationBar(
        items: _navigationIconView.map((NavigationViewData mview) {
      return mview.bottomNavigationBarItem;
    }),
      currentIndex: 1,


    );
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar,
      body: Text("132"),
    );
  }
}
