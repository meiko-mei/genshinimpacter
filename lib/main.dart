import 'package:flutter/material.dart';
import 'about_us.dart';
import 'home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'test.dart';
import 'grid.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  bool connected = Firebase.apps.isNotEmpty;
  print('Firebase is connected: $connected');
  runApp(StaticApp());
}

class StaticApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home', // Set the initial route
      routes: {
        '/home': (context) => HomeScreen(),
        '/aboutus': (context) => AboutUs(),
      },
    );
  }
}
