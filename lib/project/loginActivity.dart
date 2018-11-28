import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weixin/exercise/exercisepostshow.dart';
import 'package:flutter_weixin/home/HomePage.dart';
import 'package:flutter_weixin/kongjianuse/KongJian.dart';
import 'package:flutter_weixin/project/Net.dart';
import 'package:flutter_weixin/project/postshow.dart';
import 'package:flutter_weixin/realse/login.dart';

class loginActivity extends StatefulWidget {
  @override
  _loginState createState() => new _loginState();
}

class _loginState extends State<loginActivity> {
  TextField name, pass;
  Row rowButton;

  @override
  Widget build(BuildContext context) {
    Row mrow = new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      //在这里以下的要创建
      children: <Widget>[
        new Icon(
          Icons.home,
          color: Theme
              .of(context)
              .accentColor,
          size: 90.0,
        ),
      ],
    );
    TextFiled(context);
//测试1
    Row cast = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          child: Text('Deliver features faster', textAlign: TextAlign.center),
        ),
        Expanded(
          child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
        ),
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain, // otherwise the logo will be tiny
            child: const FlutterLogo(),
          ),
        ),
      ],
    );

    //测试2主轴对齐设置为spaceEvenly可以在每个图像之间，之前和之后均匀分割空闲的水平空间 这里图片太大通过这种方式图片会出屏。
    Row row2 = new Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        new Image.asset('image/ic_launcher_round.png'),
        new Image.asset('image/ic_launcher_round.png'),
        new Image.asset('image/ic_launcher_round.png'),
      ],
    );
    //要修复上面中的示例，其中3个图像的行对于其渲染框太宽，并导致红色条带，使用Expanded控件包装每个控件。默认情况下，每个控件的弹性系数为1，将行的三分之一分配给每个窗口小部件。
    Row row3 =
    new Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
      new Expanded(child: new Image.asset('image/ic_launcher_round.png')),
      new Expanded(child: new Image.asset('image/ic_launcher_round.png')),
      new Expanded(child: new Image.asset('image/ic_launcher_round.png')),
    ]);
    Widget packedRow = new Row(mainAxisSize: MainAxisSize.min, children: [
      new Icon(Icons.star, color: Colors.green[500]),
      new Icon(Icons.star, color: Colors.green[500]),
      new Icon(Icons.star, color: Colors.green[500]),
      new Icon(Icons.star, color: Colors.black),
      new Icon(Icons.star, color: Colors.black),
    ]);
//嵌套行和列表

    Container mCenter = new Container(
      padding: new EdgeInsets.all(20.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Icon(Icons.star, color: Colors.black),
              new Icon(Icons.star, color: Colors.black),
            ],
          ),
          new Text("点赞",
              style: new TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontFamily: 'Roboto',
                letterSpacing: 0.5,
                fontSize: 13.0,
              )),
        ],
      ),
    );
    //测试 Expanded  用法

    Container mCon = new Container(
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text("第一个"),
                new Text("第二个"),
              ],
            ),
          ),
          new Text("13"),
        ],
      ),
    );
    //路由测试

    Container container = new Container(
      child: new Column(
        children: <Widget>[
          new RaisedButton(
            onPressed: () {
              //第一种跳转方式
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) {
                  //指定跳转的页面
                  return new ListViewDemo();
                },
              ));

              //   Navigator.of(context).pushNamed("/demo1");
            },
            child: new Text("点击我路由跳转"),
          ),
          new RaisedButton(onPressed: () {
            Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) {
          //        return new AspectRatioUser();
                  return new FPostShow();
                }),
              
            );
          },child: new Text("点击我跳转"),)
        ],
      ),
    );

    // TODO: implement build
    return Scaffold(
      body: new ListView(
        children: <Widget>[
          mrow,
          name,
          pass,
          rowButton,
          cast,
          row2,
          row3,
          packedRow,
          mCenter,
          mCon,
          container,

        ],
      ),
    );
  }

  //文本输入

  void TextFiled(BuildContext context) {
    name = new TextField(
      decoration: new InputDecoration(labelText: "用户铭"),
    );
    pass = new TextField(
      decoration: new InputDecoration(labelText: "密码"),
      obscureText: true,
    );

//按钮点击事件 登陆和注册
    rowButton = new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new RaisedButton(
          onPressed: () {

            Navigator.of(context).push(new MaterialPageRoute(
              builder: (context) {
                //指定跳转的页面
                return new Login();
              },
            ));

          },
          child: Text("登陆"),
          color: Colors.blue,
        )
      ],
    );
  }
}
