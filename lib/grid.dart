import 'package:flutter/material.dart';

class MonkeyGrid extends StatelessWidget {
  MonkeyGrid({super.key});

  final List<Map<String, dynamic>> _gacha = [
    {'name': ' Diluc', 'image': '../assets/char/diluc.png'},
    {'name': 'Childe (Tartaglia)', 'image': '../assets/char/childe.png'},
    {'name': 'Barbara', 'image': '../assets/char/barbara.png'},
    {'name': 'Zhongli', 'image': '../assets/char/zhongli.png'},
    {'name': 'Albedo', 'image': '../assets/char/albedo.png'},
    {'name': 'Amber', 'image': '../assets/char/amber.png'},
    {'name': 'Beidou', 'image': '../assets/char/beidou.png'},
    {'name': 'Chongyun', 'image': '../assets/char/chongyun.png'},
    {'name': 'Diona', 'image': '../assets/char/diona.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
            padding: EdgeInsets.all(10),
            itemCount: _gacha.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 10,
              childAspectRatio: 0.8,
            ),
            itemBuilder: (context, index) {
              final character = _gacha[index];

              return GestureDetector(
                onTap: () {},
                child: Card(
                  elevation: 5,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.network(
                          character['image'],
                          height: 150,
                        ),
                        Text(
                          character['name'],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.star, color: Colors.amber),
                      ]),
                ),
              );
            }));
  }
}
