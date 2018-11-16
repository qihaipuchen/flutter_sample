import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class exercisepvb1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new exerciseState();
  }
}

class exerciseState extends State<exercisepvb1> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      //此方法返回的是weight
      body: PageView.builder(itemBuilder: (BuildContext context,int index){
       return index==1?Text("我是第一页"):Text('我是其他页面');

      },
      itemCount: 2,

      ),

    );
  }
}
