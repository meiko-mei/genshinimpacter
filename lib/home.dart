import 'package:flutter/material.dart';
import 'app_drawer.dart';
import 'text_layout_ab.dart';
import 'about_us.dart';
import 'grid.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 46, 58, 68),
        title: Text("Genshin Impacter"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
          ),
        ],
      ),
      drawer: myDrawer(context),
      body: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
            onSubmitted: (value) {
              // Perform a search using the value of the TextField
            },
          ),
        ),
        Expanded(
          child: GenshinGrid(),
        )
      ]),
    );
  }
}
