import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _login();
  }
}

class _login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    //即使container有子元素，如果我们需要将container扩展到最大，我们可以使用BoxConstraints.expand() 充屏container没有包裹子元素，而是扩展到最大。
    Container container = Container(
      color: Color.fromARGB(255, 66, 165, 245),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        color: Colors.green,
        child: Text("Flutter"),
        constraints: BoxConstraints.expand(),
      ),
    );
//可以制定Container 里边的宽搞Alignment 有两个参数x和y  Alignment(0.0, 0.0)代表整个长方形的中心。Alignment(1.0, 1.0)代表右下角
//todo Alignment 相当重要

    Container container2 = new Container(
      color: Color.fromARGB(255, 66, 165, 245),
      alignment: AlignmentDirectional(-1.0, -1.0), //可以去掉他看看效果
      child: Container(
        color: Colors.green,
        child: Text("Flutter"),
        constraints: BoxConstraints.expand(height: 400.0),
      ),
    );
//制定组件占用的大小
    Container container3 = Container(
      child: Container(
        color: Color.fromARGB(255, 66, 165, 245),
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Container(
          transform: new Matrix4.rotationZ(0.5),
          color: Colors.green,
          child: Text(
              "Flutter定Container 里边的宽搞Alignment 有两个参数x和y  Alignment(0.0, 0.0)代表整个长方形的中心。Alignment定Container 里边的宽搞Alignment 有两个参数x和y  Alignment(0.0, 0.0)代表整个长方形的中心。Alignment"),
          constraints: BoxConstraints(
              maxHeight: 300.0,
              maxWidth: 200.0,
              minWidth: 150.0,
              minHeight: 150.0),
        ),
      ),
    );
//以上是container 基础知识

    Container containerC = new Container(
      child: new Container(
        alignment: AlignmentDirectional(-1.0, -1.0),
        color: Colors.red,
        child: new Container(
          color: Colors.greenAccent,
          //  margin: new EdgeInsets.all(20.0),
          margin: const EdgeInsets.only(
            left: 5.0,
            top: 5.0,
            right: 5.0,
          ),
          padding: const EdgeInsets.only(
            left: 5.0,
            top: 5.0,
            right: 5.0,
          ),
          constraints: BoxConstraints(
            maxHeight: 150.0,
          ),
          child: new Column(
            children: <Widget>[
              new Row(
                children: <Widget>[
                  new Expanded(
                    flex: 1,
                    child: new Image.asset(
                      'image/ic_launcher_round.png',
                      height: 20,
                      width: 20,
                    ),
                  ),
                  new Expanded(
                      flex: 9,
                    child: new TextField(
                      decoration: new InputDecoration(labelText: "用户名"),
                    ),
                  ),
                ],
              ),
              new Row(
                children: <Widget>[
                  new Expanded(
                    flex: 1,
                    child: new Image.asset(
                      'image/ic_launcher_round.png',
                      height: 20,
                      width: 20,
                    ),
                  ),
                  new Expanded(
                    flex: 9,
                    child: new TextField(
                      decoration: new InputDecoration(labelText: "用户名"),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: new Text("登陆s"),
      ),
      body: containerC,
    );
  }
}
