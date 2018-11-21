import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weixin/constants.dart';
import 'package:flutter_weixin/project/loginActivity.dart';

//第一步创建 beanllei

class NavigationViwShow {
  BottomNavigationBarItem bottomNavigationBarItem;

  //构造函数

  NavigationViwShow({Key key, IconData icon, IconData activeIcon, String title})
      : bottomNavigationBarItem = new BottomNavigationBarItem(
            icon: Icon(icon),
            activeIcon: Icon(activeIcon),
            title: new Text(title));
}

class mainActivity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _mainActivityState();
  }
}

class _mainActivityState extends State<mainActivity> {
  List<NavigationViwShow> mListNavigationViw;
  List<Widget> mListwidget;
  int _currentIndex = 0;
  PageController _pageController;

  /**
   * 初始化
   */
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mListNavigationViw = [
      NavigationViwShow(
          title: "第一项",
          icon: IconData(
            0xe603,
            fontFamily: Constants.IconFontFamily,
          ),
          activeIcon: IconData(0xe608, fontFamily: Constants.IconFontFamily)),
      NavigationViwShow(
          title: "第二项",
          icon: IconData(
            0xe603,
            fontFamily: Constants.IconFontFamily,
          ),
          activeIcon: IconData(0xe608, fontFamily: Constants.IconFontFamily)),
    ];
    _pageController = PageController(initialPage: _currentIndex);
    mListwidget = [

      new loginActivity(), new Text("222")];
  }

  @override
  Widget build(BuildContext context) {
    BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(
      items: mListNavigationViw.map((NavigationViwShow mView) {
        return mView.bottomNavigationBarItem;
      }).toList(),
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentIndex = index;
          _pageController.animateToPage(_currentIndex,
              duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
        });
      },
    );

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("铭"),
      ),
      body: PageView.builder(
        itemBuilder: (BuildContext bc, int index) {
          return mListwidget[index];
        },
        controller: _pageController,//控制点击
        itemCount: mListwidget.length,
        onPageChanged: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
