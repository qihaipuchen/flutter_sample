import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weixin/constants.dart';

/**
 *  BOTTOM 底部资源 Model 类
 */
class NavigationViewData {
  BottomNavigationBarItem bottomNavigationBarItem;

  NavigationViewData(
      {Key key, String title, IconData icon, IconData activeIcon})
      : bottomNavigationBarItem = new BottomNavigationBarItem(
            icon: Icon(icon), title: Text(title), activeIcon: Icon(activeIcon));
}

/**
 * 主类
 */
class startCast extends StatefulWidget {
  @override
  startCastState createState() => startCastState();
}

class startCastState extends State<startCast> {
  List<NavigationViewData> mList = null;
  List<Widget> _pages;
  int _selectedIndex;

  //初始化参数付参
  @override
  initState() {
    super.initState();
    mList = [
      NavigationViewData(
        title: "小白",
        icon: IconData(
          0xe608,
          fontFamily: Constants.IconFontFamily,
        ),
        activeIcon: IconData(
          0xe608,
          fontFamily: Constants.IconFontFamily,
        ),
      ),
      NavigationViewData(
          title: "小宝",
          icon: IconData(
            0xe608,
            fontFamily: Constants.IconFontFamily,
          ),
          activeIcon: IconData(
            0xe603,
            fontFamily: Constants.IconFontFamily,
          ))
    ];

    _pages = [
      ConversationPage(),
      ConversationPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(
      items: mList.map((NavigationViewData mview) {
        return mview.bottomNavigationBarItem;
      }).toList(),
      currentIndex: 1,
      onTap: _onItemTapped,
    );
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar,
      body: PageView.builder(
        itemBuilder: (BuildContext context, int index) {
          return _pages[index];
        },
        itemCount: _pages.length,
        /*       onPageChanged: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },*/
      ),
    );
  }

  void _onItemTapped(int index) {
       setState(() {
      _selectedIndex = index;
    });
  }
}

class ConversationPage extends StatefulWidget {
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  Container mContainer = new Container(
    child: new Row(
      children: <Widget>[
        new Expanded(
            child: new Column(
          children: <Widget>[
            new Container(
              child: new Text(
                "这是一个lable",
                style: new TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            new Text("这是第二个lable")
          ],
        ))
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("自适应学习"),
        ),
        body: mContainer);
  }
}
