import 'package:flutter/material.dart';
import 'app_drawer.dart';
import 'text_layout_ab.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 46, 58, 68),
        title: Text("About the Genshin Impacter"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.edit),
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            '../assets/gword.png',
            height: 100,
            width: 100,
          ),
          TextLayoutAboutUs(),
        ],
      )),
      drawer: myDrawer(context),
    );
  }
}
