import 'package:flutter/material.dart';
import 'detailspage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GenshinGrid extends StatelessWidget {
  GenshinGrid({super.key});

  final List<Map<String, dynamic>> _gacha = [
    {
      'name': 'Diluc',
      'image':
          'https://firebasestorage.googleapis.com/v0/b/genshinimpacter-2222.appspot.com/o/character%2Fdiluc.png?alt=media&token=69849d1f-367b-437a-bcfb-6788343ed41c',
      'region of origin': 'Mondstadt',
      'element': 'Pyro',
      'weapon': 'Claymore',
      'role': 'DPS',
    },
    {
      'name': 'Childe (Tartaglia)',
      'image':
          'https://firebasestorage.googleapis.com/v0/b/genshinimpacter-2222.appspot.com/o/character%2Fchilde.png?alt=media&token=bd0ba2d3-a25d-4465-9a32-04222d27d41e',
      'region of origin': 'Liyue',
      'element': 'Hydro',
      'weapon': 'Bow',
      'role': 'Sub DPS',
    },
    {
      'name': 'Barbara',
      'image':
          'https://firebasestorage.googleapis.com/v0/b/genshinimpacter-2222.appspot.com/o/character%2Fbarbara.png?alt=media&token=0660bf8e-87fe-4cdc-b2be-6104eec01b6d',
      'region of origin': 'Mondstadt',
      'element': 'Hydro',
      'weapon': 'Catalyst',
      'role': 'Healer',
    },
    {
      'name': 'Zhongli',
      'image':
          'https://firebasestorage.googleapis.com/v0/b/genshinimpacter-2222.appspot.com/o/character%2Fzhongli.png?alt=media&token=435ae51e-c1e4-42d6-a078-f70d2e18a793',
      'region of origin': 'Liyue',
      'element': 'Geo',
      'weapon': 'Polearm',
      'role': 'Support',
    },
    {
      'name': 'Albedo',
      'image':
          'https://firebasestorage.googleapis.com/v0/b/genshinimpacter-2222.appspot.com/o/character%2Falbedo.png?alt=media&token=56f03348-fcf6-49d6-9bab-1bcb63f1e309',
      'region of origin': 'Mondstadt',
      'element': 'Geo',
      'weapon': 'Sword',
      'role': 'Support',
    },
    {
      'name': 'Amber',
      'image':
          'https://firebasestorage.googleapis.com/v0/b/genshinimpacter-2222.appspot.com/o/character%2Famber.png?alt=media&token=4efcb2be-77aa-4c84-85ce-72660c20e014',
      'region of origin': 'Mondstadt',
      'element': 'Pyro',
      'weapon': 'Bow',
      'role': 'Support',
    },
    {
      'name': 'Beidou',
      'image':
          'https://firebasestorage.googleapis.com/v0/b/genshinimpacter-2222.appspot.com/o/character%2Fbeidou.png?alt=media&token=1c4f3617-069c-45bc-b4cd-17a512655bbb',
      'region of origin': 'Liyue',
      'element': 'Electro',
      'weapon': 'Claymore',
      'role': 'DPS',
    },
    {
      'name': 'Chongyun',
      'image':
          'https://firebasestorage.googleapis.com/v0/b/genshinimpacter-2222.appspot.com/o/character%2Fchongyun.png?alt=media&token=d670162b-a0ec-47c6-95da-b7ac68980539',
      'region of origin': 'Liyue',
      'element': 'Cryo',
      'weapon': 'Claymore',
      'role': 'Support',
    },
    {
      'name': 'Diona',
      'image':
          'https://firebasestorage.googleapis.com/v0/b/genshinimpacter-2222.appspot.com/o/character%2Fdiona.png?alt=media&token=42b9ace9-e1a1-4f99-8905-156e84a08830',
      'region of origin': 'Mondstadt',
      'element': 'Cryo',
      'weapon': 'Bow',
      'role': 'Healer',
    },
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
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsPage(
                        genshin: character,
                      ),
                    ),
                  );
                },
                child: Card(
                  elevation: 5,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsPage(
                                  genshin: character,
                                ),
                              ),
                            );
                          },
                          child: Image.network(
                            character['image'],
                            height: 150,
                          ),
                        ),
                        Text(
                          character['name'],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                ),
              );
            }));
  }
}
