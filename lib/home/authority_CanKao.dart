import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weixin/constants.dart';

class authority_CanKao extends StatefulWidget {
  authority_CanKao({Key key}) : super(key: key);

  @override
  createStates createState() => new createStates();
}

class createStates extends State<authority_CanKao> {
  int _selectIndex = 1;
  final _widgetOptions = [
    Text('Index 0: Home'),
    Text('Index 1: Business'),
    Text('Index 2: School'),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("title"),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), title: Text("Business")),
          BottomNavigationBarItem(
              icon: Icon(Icons.school), title: Text("school"))
        ],

        currentIndex: _selectIndex,
//单机变色
        fixedColor: Colors.blue,
        onTap: onItemTap,
      ),
    );
  }

  void onItemTap(int index) {
    setState(() {
      _selectIndex = index;
    });
  }
}

//---------------------------------------------------------------------------
