import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AspectRatioUser extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _AspectRation();
  }
}

class _AspectRation extends State<AspectRatioUser> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    AspectRatio aspectRatio = new AspectRatio(
      aspectRatio: 3 / 2,//宽高比例
      child: new Image(image: new AssetImage('image/ic_launcher_round.png')),
    );

    //若果定义大小的话子child  就是w 和 h  宽高 若没有定义大小  则随 Container 大小来定义
    SizedBox sizedBox = new SizedBox(
      width: 20.0,
      height: 20.0,
      child: Container(
        color: Colors.red,
        width: 1.0,
        height: 300.0,
      ),
    );

//Stack相当于 Framelayout
    Container container=  new Container(
   margin: EdgeInsets.all(30.0),
        color: Colors.yellow,
        height: 150.0,
        width: 500.0,
        child: new Stack(children: <Widget>[
          new Container(
            color: Colors.blueAccent,
            height: 50.0,
            width: 100.0,
            alignment: Alignment.center,
            child: Text('unPositioned'),
          ),
          new Positioned(
              left: 40.0,
              top: 80.0,
              child: new Container(
                color: Colors.pink,
                height: 50.0,
                width: 95.0,
                alignment: Alignment.center,
                child: Text('Positioned'),
              )),
        ]));

    // TODO: implement build
    return Scaffold(
      body: new Container(
        child: new ListView(
          children: <Widget>[aspectRatio, sizedBox,container],
        ),
      ),
    );
  }
}
