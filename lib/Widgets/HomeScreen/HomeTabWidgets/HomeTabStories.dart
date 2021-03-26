import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTabStories extends StatefulWidget {
  @override
  _HomeTabStoriesState createState() => _HomeTabStoriesState();
}

class _HomeTabStoriesState extends State<HomeTabStories> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: [
            Container(
              child: Column(
                children: [
                  ClipOval(
                    child: SizedBox(
                      height: 60.0,
                      width: 60.0,
                      child: Image.asset(
                        'assets/images/splashlogo.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Your story',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
