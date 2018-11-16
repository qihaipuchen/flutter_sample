import 'package:flutter/material.dart';
import 'package:flutter_weixin/exercise/exercisepvb1.dart';
import 'package:flutter_weixin/exercise/exercisepvb2.dart';
import 'package:flutter_weixin/home/HomePage.dart';
import 'package:flutter_weixin/home/PageViewBuidl.dart';
import 'package:flutter_weixin/home/authority_CanKao.dart';
import 'package:flutter_weixin/home/BottomNavigationBar.dart';

import './constants.dart' show AppColors;
import './home/home_screen.dart';

void main() => runApp(MaterialApp(
  title: '微信',
  theme: ThemeData.light().copyWith(
      primaryColor: Color(AppColors.AppBarColor),
      cardColor: Color(AppColors.AppBarColor)
  ),
  home: exercisepvb2(),
));
