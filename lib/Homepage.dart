import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final int days = 30;
  final String name = "Abhishek";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days day of Flutter of $name"),
        ),
      ),
      drawer: Drawer(

      ),
    );
  }
}
