import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextLayoutAboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.symmetric(vertical: 1.0),
            child: Text(
              '"Where you leave your footprints, and where you have yet to stride — your new world will unfold before you."',
              style: GoogleFonts.sourceSerifPro(
                textStyle: TextStyle(
                  color: Color.fromARGB(255, 46, 58, 68),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 4,
            child: Divider(
              color: Color.fromARGB(255, 195, 195, 195),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.symmetric(vertical: 1.0),
            child: Text(
              "Discover the world of Genshin Impact characters with the Genshin Impacter app. Explore character profiles, including names, regions, weapons, elements, and stunning images. ",
              style: GoogleFonts.kanit(fontSize: 15),
            ),
          ),
          Image.asset(
            'assets/elements.png',
            height: 30,
            width: 500,
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.symmetric(vertical: 1.0),
            child: Text(
              "Build your dream team and uncover the secrets of Teyvat's diverse roster. Enhance your gameplay and strategize with this essential companion. Download now and embark on an epic adventure.",
              style: GoogleFonts.kanit(fontSize: 15),
            ),
          ),
        ]);
  }
}
