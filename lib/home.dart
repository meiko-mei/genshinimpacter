import 'package:flutter/material.dart';
import 'app_drawer.dart';
import 'text_layout_ab.dart';
import 'about_us.dart';
import 'grid.dart';

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
          ),
        ),
        Expanded(
          child: MonkeyGrid(),
        )
      ]),
    );
  }
}
