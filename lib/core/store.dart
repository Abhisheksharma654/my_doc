// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:velocity_x/velocity_x.dart';
import 'package:my_doc/models/cart.dart';
import 'package:my_doc/models/catalog.dart';

class MyStore extends VxStore {
  CatalogModel catalog;
  Cartmodel cart;

  MyStore(this.cart, this.catalog) {
    catalog = CatalogModel();
    cart = Cartmodel();
    cart.catalog = catalog;
  }
}
