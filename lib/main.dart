import 'package:flutter/material.dart';
import 'package:my_doc/Pages/cartpage.dart';
import 'package:my_doc/Pages/loginpage.dart';
import 'package:my_doc/core/store.dart';
import 'package:my_doc/utils/routes.dart';
import 'package:my_doc/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';
import 'Pages/Homepage.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(VxState(store: MyStore(), child: const Myapp()));
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: Myroutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        Myroutes.loginRoute: (context) => LoginPage(),
        Myroutes.homeRoute: (context) => Homepage(),
        Myroutes.cartRoute: (context) => cartpage(),
      },
    );
  }
}
