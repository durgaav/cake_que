import 'package:cake_que/initial_screen.dart';
import 'package:cake_que/welcome_activity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){
  /*SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white, // status bar color
  ));*/
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeActivity()
    );
  }
}
