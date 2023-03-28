// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors
import 'dart:convert';
import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_doc/core/store.dart';
import 'package:my_doc/models/cart.dart';
import 'package:my_doc/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:my_doc/models/catalog.dart';
import '../widgets/home_widgets/catalog_list.dart';
import 'package:http/http.dart' as http;
import '../widgets/home_widgets/catalogheader.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final int days = 30;

  final String name = "Abhishek";
  final url = "https://api.jsonbin.io/b/604dbddb683e7e079c4eefd3";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    // final catalogjson =
    //     await rootBundle.loadString("assets/files/catalog.json");

    final response = await http.get(Uri.parse(url));
    final catalogjson = response.body;
    final decodeData = jsonDecode(catalogjson);
    var productsData = decodeData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final _cart = (VxState.store as MyStore).cart;
    return Scaffold(
        backgroundColor: Theme.of(context).cardColor,
        floatingActionButton: VxBuilder(
          mutations: {Addmutation, Removemutation},
          builder: (context, store, status) => FloatingActionButton(
                  onPressed: () => Navigator.pushNamed(context, Myroutes.cartRoute),
                  backgroundColor: context.theme.buttonColor,
                  child: Icon(
                    CupertinoIcons.cart,
                    color: Colors.white,
                  ))
              .badge(
                  color: Vx.red500,
                  size: 20,
                  count: _cart.items.length,
                  textStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
        ),
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
                if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                  CatalogList().expand()
                else
                  CircularProgressIndicator().centered().expand(),
              ],
            ),
          ),
        ));
  }
}
