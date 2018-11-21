import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 登陆界面
 */
class LoginPage1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoginPageState();
  }
}

class LoginPageState extends State<LoginPage1> {
  GlobalKey<ScaffoldState> scaffoldKey;

  TextEditingController _nameContro = new TextEditingController(text: "小明");
  TextEditingController _passContro = new TextEditingController(text: "pass");

  @override
  void initState() {
    super.initState();
    scaffoldKey = new GlobalKey<ScaffoldState>();
  }

  @override
  Widget build(BuildContext context) {
    Row avatar = new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Icon(
          Icons.account_circle,
          color: Theme.of(context).accentColor,
          size: 80.0,
        ),
      ],
    );

    TextField name = new TextField(
      decoration: new InputDecoration(labelText: "用户铭"),
    );
//obscureText 密码
    TextField pass = new TextField(
      decoration: new InputDecoration(labelText: "密码"),
      obscureText: true,
      controller: _passContro,
    );

    // TODO: implement build

    Row loginAndRegister = new Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        new RaisedButton(
          child: new Text(
            "登陆",
            style: new TextStyle(
              color: Colors.red,
            ),
          ),
          color: Theme.of(context).accentColor,
          disabledColor: Colors.blue,
          textColor: Colors.white,
          onPressed: () {
            Login_();
          },
        )
      ],
    );

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(title: Text("程序员")),
      body: new ListView(
        children: <Widget>[avatar, name, pass, loginAndRegister],
      ),
    );
  }

  
  void  Login_(){
    
    String  name=_nameContro.text;
    String  pass=_passContro.text;
    
    if(name.length==0){
      scaffoldKey.currentState
          .showSnackBar(new SnackBar(content: new Text("请先输入用户名！")));
      return;
    }
    if(pass.length==0){
     //Navigator.of(context).pop();
      scaffoldKey.currentState.showSnackBar(new SnackBar(content: new Text("请输入密码")));
    }
  }
  void _login() {
    scaffoldKey.currentState
        .showSnackBar(new SnackBar(content: new Text("小猫咪")));
  }
}
