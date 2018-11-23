import 'package:flutter/material.dart';
import 'package:flutter_weixin/exercise/exercisepLinnerlayout.dart';
import 'package:flutter_weixin/exercise/exercisepvb1.dart';
import 'package:flutter_weixin/exercise/exercisepvb2.dart';
import 'package:flutter_weixin/exercise/exercisevb3.dart';
import 'package:flutter_weixin/exercise/fragment/flutterrow.dart';
import 'package:flutter_weixin/home/HomePage.dart';
import 'package:flutter_weixin/home/PageViewBuidl.dart';
import 'package:flutter_weixin/home/authority_CanKao.dart';
import 'package:flutter_weixin/home/BottomNavigationBar.dart';
import 'package:flutter_weixin/lianxicast/cast1.dart';
import 'package:flutter_weixin/lianxicast/cast2.dart';
import 'package:flutter_weixin/lianxicast/dart3.dart';
import 'package:flutter_weixin/lianxicast/startCast.dart';
import 'package:flutter_weixin/lianxicast/startCast1.dart';
import 'package:flutter_weixin/pro_v/persion.dart';
import 'package:flutter_weixin/project/mainActivity.dart';

import './constants.dart' show AppColors;
import './home/home_screen.dart';

void main() => runApp(MaterialApp(
      title: '微信',
      theme: ThemeData.light().copyWith(
          primaryColor: Color(AppColors.AppBarColor),
          cardColor: Color(AppColors.AppBarColor)),
      home: mainActivity(),
  routes: <String,WidgetBuilder>{
    "/demo1":(BuildContext context)=>new HomePage(),
  },

    ));
