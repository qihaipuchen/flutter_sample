import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


/**
 * android  盒子布局
 * Flutter 布局（三）- FittedBox、AspectRatio、ConstrainedBox详解
 */
class cust1 extends StatefulWidget {
  @override
  _impcust1 createState() => new _impcust1();
}

class _impcust1 extends State<cust1> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var descTextStyle = new TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18.0,
      height: 2.0,
    );

    // DefaultTextStyle.merge可以允许您创建一个默认的文本样式，该样式会被其
    // 所有的子节点继承
    var iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            new Column(
              children: [
                new Icon(Icons.kitchen, color: Colors.green[500]),
                new Text('PREP:'),
                new Text('25 min'),
              ],
            ),
            new Column(
              children: [
                new Icon(Icons.timer, color: Colors.green[500]),
                new Text('COOK:'),
                new Text('1 hr'),
              ],
            ),
            new Column(
              children: [
                new Icon(Icons.restaurant, color: Colors.green[500]),
                new Text('FEEDS:'),
                new Text('4-6'),
              ],
            ),
          ],
        ),
      ),
    );

    Container container = new Container(
      color: Colors.amber,
      child: new Row(
        children: <Widget>[
          new Column(
            children: <Widget>[
              new Container(
                width: 200,
                height: 100,
                color: Colors.red,
              ),
              new Container(
                width: 200,
                height: 100,
                color: Colors.blue,
                child: new Row(
                  children: <Widget>[
                    new Container(
                      width: 100,
                      height: 100,
                      color: Colors.greenAccent,
                    ),
                    new Container(
                      width: 100,
                      height: 100,
                      color: Colors.deepOrangeAccent,
                    ),
                  ],
                ),
              ),
            ],
          ),
          new Column(
            children: <Widget>[
              new Container(
                width: 200,
                height: 100,
                color: Colors.red,
                child: new Row(
                  children: <Widget>[
                    new Container(
                      width: 100,
                      height: 100,
                      color: Colors.greenAccent,
                    ),
                    new Container(
                      width: 100,
                      height: 100,
                      color: Colors.blueAccent,
                    )
                  ],
                ),
              ),
              new Container(
                width: 200,
                height: 100,
                color: Colors.red,
                child: new Row(
                  children: <Widget>[
                    new Container(
                      width: 100,
                      height: 100,
                      color: Colors.blueAccent,
                    ),
                    new Container(
                      width: 100,
                      height: 100,
                      color: Colors.greenAccent,
                    )
                  ],
                ),
              ),
            ],
          ),
          new Column(
            children: <Widget>[
              new Container(
                width: 200,
                height: 200,
                color: Colors.red,
              ),
            ],
          )
        ],
      ),
    );
    Container m1= new Container(
      color: Colors.amberAccent,
      width: 300.0,
      height: 300.0,
      child: new FittedBox(
        fit: BoxFit.contain,
        alignment: Alignment.topLeft,
        child: new Container(
          color: Colors.red,
          child: new Text("FittedBox"),
        ),
      ),
    );


    return Scaffold(
      appBar: AppBar(
        title: Text("铭"),
      ),
      body: m1,
    );
  }
}
