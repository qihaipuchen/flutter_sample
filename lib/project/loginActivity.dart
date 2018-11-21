import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loginActivity extends StatefulWidget {
  @override
  _loginState createState() => new _loginState();
}

class _loginState extends State<loginActivity> {
  TextField name,pass;
  @override
  Widget build(BuildContext context) {
    Row mrow = new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      //在这里以下的要创建
      children: <Widget>[
        new Icon(
          Icons.home,
          color: Theme.of(context).accentColor,
          size: 80.0,
        ),
      ],
    );
    TextFiled(context);
    // TODO: implement build
    return Scaffold(
      body: new ListView(
        children: <Widget>[
          mrow,name,pass
        ],
      ),
    );
  }

  //文本输入

  void TextFiled(BuildContext context) {
     name = new TextField(
      decoration: new InputDecoration(labelText: "用户铭"),
    );
      pass  = new  TextField(

      decoration: new InputDecoration(labelText: "密码"),
    obscureText: true,
    );

  }
}
