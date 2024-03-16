import 'package:flutter/material.dart';
import 'package:todo_app/pages/first_page.dart';
import 'package:todo_app/pages/homePage.dart';
import 'package:todo_app/pages/settingPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstPage': (context) => FirstPage(),
        '/homePage': (context) => HomePage(),
        '/settingPage': (context) => SettingPage(),
      },
    );
  }
}
