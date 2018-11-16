import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 这个类是布局属性应用
 */
class exerciseplayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new exerciseStatelayout();
  }
}

class exerciseStatelayout extends State<exerciseplayout> {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(

        // padding: const EdgeInsets.all(35.0),//整体padding
        //整体是一个水平布局
        child: Row(
      children: <Widget>[
        Expanded(
          child: Container(
            color: Colors.red,
            padding: EdgeInsets.all(5.0),
            margin: const EdgeInsets.only(left: 5.0, right: 5.0, top: 150.0),
            child: Column(
              children: <Widget>[
                new Text(
                  "Kandersteg, Switzerland",
                  style: new TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
                new Text(
                  "Kandersteg, Switzerland",
                  style: new TextStyle(
                    color: Colors.grey[500],
                  ),
                )
              ],
            ),
          ),
          flex: 3,
        ),
        Expanded(
          child: Container(
            color: Colors.yellow,
            child: Container(
              alignment: Alignment.center,
              color: Colors.green,
              width: 100,
              height: 100,
            ),
          ),
          flex: 2,
        ),
      ],
    ));

    // TODO: implement build
    return Scaffold(
      //此方法返回的是weight
      /*  body: PageView.builder(itemBuilder: (BuildContext context,int index){
       return index==1?Text("我是第一页"):Text('我是其他页面');

      },
      itemCount: 2,

      ),*/
      body: titleSection,
    );
  }
}
