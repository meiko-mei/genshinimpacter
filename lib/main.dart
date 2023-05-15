import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'about_us.dart';
import 'home.dart';

void main() => runApp(StaticApp());

class StaticApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      initialRoute: '/',
      routes: {
        '/home': (context) => HomeScreen(),
        '/aboutus': (context) => AboutUs(),
      },
    );
  }
}
