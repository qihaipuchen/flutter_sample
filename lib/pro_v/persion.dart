import 'package:flutter/material.dart';
import 'package:flutter_weixin/pro_v/aboutus.dart';
import 'package:flutter_weixin/util/DataUtils.dart';
class MyInfoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyInfoPageState();
  }
}

class MyInfoPageState extends State<MyInfoPage> with WidgetsBindingObserver {
  String userName;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget image = new Image.asset(
      'image/ic_launcher_round.png',
      width: 100.0,
      height: 100.0,
    );
    Widget raisedButton = new RaisedButton(
      child: new Text(
        userName == null ? "请登录" : userName,
        style: new TextStyle(color: Colors.white),
      ),
      color: Theme.of(context).accentColor,
      onPressed: () async {
        //登录

     await DataUtils.isLogin().then((isLogin) {
          if (!isLogin) {
            Navigator.of(context)
                .push(new MaterialPageRoute(builder: (context) {
              return null;
            }));
          } else {
            print('已登录!');
          }
        });
      },
    );
    Widget listLike = new ListTile(
        leading: const Icon(Icons.favorite),
        title: const Text('关于我们'),
        trailing:  Icon(Icons.chevron_right, color: Theme.of(context).accentColor),
        onTap: () async {
          await DataUtils.isLogin().then((isLogin) {
            if (isLogin) {
              Navigator
                  .of(context)
                  .push(new MaterialPageRoute(builder: (context) {
                return null;
              }));
            } else {
              print('已登录!');
              Navigator
                  .of(context)
                  .push(new MaterialPageRoute(builder: (context) {
                return new AboutUsPage();
              }));
            }
          });
        });
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      body: new ListView(
        padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
        children: <Widget>[
          image,

          raisedButton,
        listLike
          /* listAbout,
        listLogout,*/
        ],
      ),
    );
  }
}
