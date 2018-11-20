import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weixin/constants.dart';

/**
 * 创建Bean  类
 */

class NavigationViewBean {
  BottomNavigationBarItem bottomNavigationBarItem;

  NavigationViewBean(
      {Key key, String title, IconData icon, IconData activeIcon})
      : bottomNavigationBarItem = new BottomNavigationBarItem(
      icon: Icon(icon), activeIcon: Icon(activeIcon), title: Text(title));
}

class cast2 extends StatefulWidget {
  @override
  _cast2State createState() => new _cast2State();
}

class _cast2State extends State<cast2> {
  //底部列表初始化
  int index = 0;
  List<NavigationViewBean> mlistBean;

  /**
   * 初始化数据
   */

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mlistBean = [
      NavigationViewBean(
          title: "小宝",
          icon: IconData(
            0xe608,
            fontFamily: Constants.IconFontFamily,
          ),
          activeIcon: IconData(
            0xe603,
            fontFamily: Constants.IconFontFamily,
          )),
      NavigationViewBean(
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

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(
      items: mlistBean.map((NavigationViewBean mview) {
        return mview.bottomNavigationBarItem;
      }).toList(),
      currentIndex: index,
      onTap: onTapClick,
    );
    //主内容

    Container container = new Container(
      child: new Row(
        children: <Widget>[
          new Expanded(child: new Column(
            children: <Widget>[
              new Container(
                child: new Text(
                  "这是一个Labe",
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              new Text("小公鸡")
            ],


          ))


        ],


      ),

    );
    return Scaffold(
      appBar: AppBar(
        title: Text("title"),
      ),
      bottomNavigationBar: bottomNavigationBar,
      body:container,
    );
  }

  void onTapClick(int index) {
    setState(() {
      this.index = index;
    });
  }
}
