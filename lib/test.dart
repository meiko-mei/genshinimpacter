import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DetailsPage extends StatefulWidget {
  final String documentId; // Add documentId property

  const DetailsPage({Key? key, required this.documentId}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  Map<String, dynamic>? genshinData; // Variable to store fetched data

  @override
  void initState() {
    super.initState();
    fetchDataFromFirestore(); // Fetch data when the widget is initialized
  }

  void fetchDataFromFirestore() async {
    DocumentSnapshot snapshot = await FirebaseFirestore.instance
        .collection('Character')
        .doc(widget.documentId) // Use the provided documentId
        .get();

    if (snapshot.exists) {
      setState(() {
        genshinData = snapshot.data();
      });
    } else {
      // Document does not exist
    }
  }

  @override
  Widget build(BuildContext context) {
    if (genshinData == null) {
      // Handle loading state
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(genshinData!['name']),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.network(
              genshinData!['image'],
            ),
            Text(
              genshinData!['name'],
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Region: ${genshinData!['region of origin']}',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              'Element: ${genshinData!['element']}',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              'Weapon: ${genshinData!['weapon']}',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              'Role: ${genshinData!['role']}',
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
