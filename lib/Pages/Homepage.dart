// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:my_doc/widgets/drawer.dart';

class Homepage extends StatelessWidget {
  final int days = 30;
  final String name = "Abhishek";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days day of Flutter of $name"),
        ),
      ),
      drawer: Mydrawer(),
    );
  }
}
