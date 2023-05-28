import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final Map<String, dynamic> genshin;

  const DetailsPage({super.key, required this.genshin});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(genshin['name']),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.network(
              genshin['image'],
            ),
            Text(
              genshin['name'],
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Region: ${genshin['region of origin']}',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              'Element: ${genshin['element']}',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              'Weapon: ${genshin['weapon']}',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              'Role: ${genshin['role']}',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
