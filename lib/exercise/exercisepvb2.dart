import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weixin/exercise/exercisepLinnerlayout.dart';
import 'package:flutter_weixin/exercise/fragment/HomeFragment.dart';
import 'package:flutter_weixin/exercise/fragment/flutterrow.dart';

class exercisepvb2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new exerciseState2();
  }
}

class exercisepvb2state extends State<exercisepvb2> {
  List<Widget> _pages;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      //此方法返回的是weight
      body: PageView.builder(
        itemBuilder: (BuildContext context, int index) {
          return index == 1 ? Text("我是第一页") : Text('我是其他页面');
        },
        itemCount: 2,
      ),
    );
  }
}

class exerciseState2 extends State<exercisepvb2> {
  List<Widget> _pages;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _pages = [
      ViewPager(),
      Text('小猫'),
      Text('小狗'),
      Text('小太阳'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      //此方法返回的是weight
      body: PageView.builder(
        itemBuilder: (BuildContext context, int index) {
          return _pages[index];
        },
        itemCount: _pages.length,
      ),
    );
  }
}

//Viewpager 页面里边的东西

class ViewPager extends StatefulWidget {
  @override
  _ViewPageState createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPager> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new exerciseplayout();
  }
}
