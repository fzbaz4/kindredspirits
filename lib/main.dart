// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/login-background.png"),
              fit: BoxFit.cover, // Covers the whole widget area
            ),
          ),
          child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 180, left: 20),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align text to the left
                mainAxisSize: MainAxisSize.min, // Use the minimum space
                children: <Widget>[
                  Text(
                    'HELLO',
                    style: GoogleFonts.merriweather(
                      textStyle: TextStyle(
                        color: Color.fromARGB(255, 127, 127, 128),
                        letterSpacing: .5,
                        fontSize: 52,
                      ),
                    ),
                  ),
                  SizedBox(
                      height: 0.1), // Space between "HELLO" and the next text
                  Text(
                    'Sign in to your account', // Additional text
                    style: GoogleFonts.merriweather(
                      textStyle: TextStyle(
                        color: Color.fromARGB(255, 127, 127, 128),
                        letterSpacing: .5,
                        fontSize: 14, // Smaller font size for the second text
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 300, // Control the width of the text field
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 20), // Adds 20 pixels padding to the right
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          labelText: 'Username/Email',
                          alignLabelWithHint: true,
                          fillColor: Color.fromARGB(255, 252, 236, 212),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide.none,
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
