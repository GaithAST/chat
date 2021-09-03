
import 'package:chat/loginsc.dart';
import 'package:flutter/material.dart';
import 'package:chat/datamodels.dart';

void main() {

  runApp(MyApp());
}
// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  // ignore: prefer_const_constructors
  return MaterialApp(home: Users(),debugShowCheckedModeBanner: false);

  
}

}
