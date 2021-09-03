import 'package:flutter/material.dart';
import 'package:gathhr/login.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
 ));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gathhrr',
      debugShowCheckedModeBanner: false,
      
      home: Login()
    );
  }
}

