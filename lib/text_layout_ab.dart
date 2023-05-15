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
              "Embark on an extraordinary journey with Genshin Impacter, the ultimate mobile application that unveils the untold stories of your favorite characters in the immersive world of Genshin Impact. Dive deep into the captivating tales of these characters as you uncover their origins, fun facts, and untold secrets.",
              style: GoogleFonts.kanit(fontSize: 15),
            ),
          ),
          Image.asset(
            '../assets/elements.png',
            height: 30,
            width: 500,
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.symmetric(vertical: 1.0),
            child: Text(
              "But Genshin Impacter is more than just an application for character stories. It is your guide to mastering the art of team building and optimizing character performance. Discover the perfect synergy between characters and their respective artifact sets, unlocking their true potential on the battlefield. Unleash devastating combos, harness elemental powers, and witness your team composition ascend to greatness.",
              style: GoogleFonts.kanit(fontSize: 15),
            ),
          ),
          Image.asset(
            '../assets/elements.png',
            height: 30,
            width: 500,
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.symmetric(vertical: 1.0),
            child: Text(
              "With an intuitive and user-friendly interface, Genshin Impacter empowers you to navigate through a treasure trove of knowledge effortlessly. Immerse yourself in the stunning visuals and immerse in the immersive lore as you dive deeper into the fascinating world of Teyvat.",
              style: GoogleFonts.kanit(fontSize: 15),
            ),
          ),
        ]);
  }
}
