import 'package:flutter/material.dart';
import 'test.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GenshinGrid extends StatelessWidget {
  final List<Map<String, dynamic>> _gacha = [
    {
      'name': 'Albedo',
      'image':
          'https://firebasestorage.googleapis.com/v0/b/genshinimpacter-2222.appspot.com/o/character%2Falbedo.png?alt=media&token=56f03348-fcf6-49d6-9bab-1bcb63f1e309&_gl=1*1ovhvbr*_ga*MTg0MTg2ODczNi4xNjg1MTAzMTQ1*_ga_CW55HF8NVT*MTY4NjIyMzgxNy4yNS4xLjE2ODYyMjQyNzMuMC4wLjA.',
      'doc': 'W14i7b93zE4rm1OfXVvt',
    },
    {
      'name': 'Diluc',
      'image':
          'https://firebasestorage.googleapis.com/v0/b/genshinimpacter-2222.appspot.com/o/character%2Fdiluc.png?alt=media&token=69849d1f-367b-437a-bcfb-6788343ed41c',
      'doc': 'ksxLvqATbfw017GlHZnb',
    },
    {
      'name': 'Barbara',
      'image':
          'https://firebasestorage.googleapis.com/v0/b/genshinimpacter-2222.appspot.com/o/character%2Fbarbara.png?alt=media&token=0660bf8e-87fe-4cdc-b2be-6104eec01b6d&_gl=1*qmkg4l*_ga*MTg0MTg2ODczNi4xNjg1MTAzMTQ1*_ga_CW55HF8NVT*MTY4NjIyMzgxNy4yNS4xLjE2ODYyMjUxMTkuMC4wLjA.',
      'doc': '0on2Dv74xPaRlBVMYJT9',
    },
    {
      'name': 'Amber',
      'image':
          'https://firebasestorage.googleapis.com/v0/b/genshinimpacter-2222.appspot.com/o/character%2Famber.png?alt=media&token=4efcb2be-77aa-4c84-85ce-72660c20e014&_gl=1*15jehkn*_ga*MTg0MTg2ODczNi4xNjg1MTAzMTQ1*_ga_CW55HF8NVT*MTY4NjIyMzgxNy4yNS4xLjE2ODYyMjUxOTMuMC4wLjA.',
      'doc': '5VyYlREH4wMOKWLAkTrr',
    },
    {
      'name': 'Childe (Tartaglia)',
      'image':
          'https://firebasestorage.googleapis.com/v0/b/genshinimpacter-2222.appspot.com/o/character%2Fchilde.png?alt=media&token=bd0ba2d3-a25d-4465-9a32-04222d27d41e&_gl=1*k5yfch*_ga*MTg0MTg2ODczNi4xNjg1MTAzMTQ1*_ga_CW55HF8NVT*MTY4NjIyMzgxNy4yNS4xLjE2ODYyMjUyMDkuMC4wLjA.',
      'doc': '8zrR3H9uWHe2PEt25vDr',
    },
    {
      'name': 'Zhongli',
      'image':
          'https://firebasestorage.googleapis.com/v0/b/genshinimpacter-2222.appspot.com/o/character%2Fzhongli.png?alt=media&token=435ae51e-c1e4-42d6-a078-f70d2e18a793&_gl=1*1t293sb*_ga*MTg0MTg2ODczNi4xNjg1MTAzMTQ1*_ga_CW55HF8NVT*MTY4NjIyMzgxNy4yNS4xLjE2ODYyMjUyMjUuMC4wLjA.',
      'doc': 'UGXbwNzqMZ1is8DCaGr7',
    },
    {
      'name': 'Beidou',
      'image':
          'https://firebasestorage.googleapis.com/v0/b/genshinimpacter-2222.appspot.com/o/character%2Fbeidou.png?alt=media&token=1c4f3617-069c-45bc-b4cd-17a512655bbb&_gl=1*124vzdx*_ga*MTg0MTg2ODczNi4xNjg1MTAzMTQ1*_ga_CW55HF8NVT*MTY4NjIyMzgxNy4yNS4xLjE2ODYyMjUyNDEuMC4wLjA.',
      'doc': 'jRnoksSVcVlqlxUKr6ug',
    },
    {
      'name': 'Diona',
      'image':
          'https://firebasestorage.googleapis.com/v0/b/genshinimpacter-2222.appspot.com/o/character%2Fdiona.png?alt=media&token=42b9ace9-e1a1-4f99-8905-156e84a08830&_gl=1*78iyx4*_ga*MTg0MTg2ODczNi4xNjg1MTAzMTQ1*_ga_CW55HF8NVT*MTY4NjIyMzgxNy4yNS4xLjE2ODYyMjUyNTYuMC4wLjA.',
      'doc': 'zMYHI8he8dIMhAAlj0Wj',
    },
    {
      'name': 'Chongyun',
      'image':
          'https://firebasestorage.googleapis.com/v0/b/genshinimpacter-2222.appspot.com/o/character%2Fchongyun.png?alt=media&token=d670162b-a0ec-47c6-95da-b7ac68980539&_gl=1*7k5yb4*_ga*MTg0MTg2ODczNi4xNjg1MTAzMTQ1*_ga_CW55HF8NVT*MTY4NjIyMzgxNy4yNS4xLjE2ODYyMjUyODAuMC4wLjA.',
      'doc': 'zwzJsOK1QwhYJqf7mE9L',
    },
    // Add more characters here...
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
                    documentId: character['doc'], // Pass the document ID
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
                            documentId:
                                character['doc'], // Pass the document ID
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
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
