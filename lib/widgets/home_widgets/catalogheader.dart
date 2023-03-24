import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:my_doc/widgets/theme.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.bold.color(Color.fromARGB(255, 4, 4, 4)).make(),
        "Trending products".text.xl2.color(Color.fromARGB(255, 0, 0, 0)).make(),
      ],
    );
  }
}
