import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_doc/core/store.dart';
import 'package:my_doc/models/cart.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../models/catalog.dart';

class Addtocart extends StatelessWidget {
  final Item catalog;
  Addtocart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [Addmutation, Removemutation]);
    final Cartmodel _cart = (VxState.store as MyStore).cart;

    bool isIncart = _cart.items.contains(catalog) ?? false;
    return ElevatedButton(
      onPressed: () {
        if (!isIncart) {
          Addmutation(catalog); //setState(() {});
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            context.theme.buttonColor,
          ),
          shape: MaterialStateProperty.all(
            StadiumBorder(),
          )),
      child: isIncart ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}
