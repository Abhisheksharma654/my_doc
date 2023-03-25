import 'package:flutter/material.dart';
import 'package:my_doc/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class cartpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 255, 249, 249),
        title: "Cart".text.make(),
      ),
    );
  }
}
