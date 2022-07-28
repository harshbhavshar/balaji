import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Page/home_page.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:  ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        useMaterial3: true
      ),
      home: HomePage(),
    );
  }
}
