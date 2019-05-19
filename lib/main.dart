import 'package:flutter/material.dart';
import 'likeWidget.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  
  title: 'Flutter Demo',

  theme: ThemeData(
    primarySwatch: Colors.green,
  ),

  home: LikeWidget(),

));