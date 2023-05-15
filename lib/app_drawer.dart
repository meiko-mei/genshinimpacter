import 'package:flutter/material.dart';

Widget myDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              image: DecorationImage(image: AssetImage("../assets/gword.png"))),
          child: Text(''),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: const Text('Home'),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/home');
          },
        ),
        ListTile(
          leading: Icon(Icons.book),
          title: const Text('About Genshin Impacter'),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/aboutus');
          },
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: const Text('Settings'),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
      ],
    ),
  );
}
