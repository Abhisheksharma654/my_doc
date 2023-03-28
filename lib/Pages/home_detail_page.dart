// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:my_doc/widgets/home_widgets/Addtocart.dart';
import 'package:my_doc/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:my_doc/models/catalog.dart';

class Homedetailspage extends StatelessWidget {
  final Item catalog;
  const Homedetailspage({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl3.red600.make(),
            Addtocart(catalog: catalog).wh(120, 50),
          ],
        ).p32(),
      ),
      body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                      tag: Key(catalog.id.toString()),
                      child: Image.network(catalog.image))
                  .h32(context),
              Expanded(
                  child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: context.cardColor,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.xl4
                          .color(MyTheme.darkBluishColor)
                          .bold
                          .make(),
                      catalog.desc.text
                          .textStyle(context.captionStyle)
                          .xl
                          .make(),
                      10.heightBox,
                      "The iPhone 12 Pro is a flagship smartphone from Apple that boasts a stunning 6.1-inch Super Retina XDR display with a resolution of 2532 x 1170 pixels"
                          .text
                          .textStyle(context.captionStyle)
                          .make()
                          .p32()
                    ],
                  ).py64(),
                ),
              ))
            ],
          )),
    );
  }
}
