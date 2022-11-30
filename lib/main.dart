import 'package:flutter/material.dart';
import 'package:my_doc/Pages/loginpage.dart';
import 'Pages/Homepage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/login",
      routes: {
        "/": (context) => Loginpage(),
        "/login": (context) => Loginpage(),
        "/home": (context) => Homepage()
      },
    );
  }
}
