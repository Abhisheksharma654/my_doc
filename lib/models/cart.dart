import 'package:my_doc/core/store.dart';
import 'package:my_doc/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class Cartmodel {
  late CatalogModel _catalog;

  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  List<Item> get items => _itemIds.map((id) => _catalog.getByID(id)).toList();

//Get total price
  num get totalprice =>
      items.fold(0, (total, current) => total + current.price);

  // void add(Item item) {
  //   _itemIds.add(item.id);
  // }
}

class Addmutation extends VxMutation<MyStore> {
  final Item item;
  Addmutation(this.item);
  @override
  perform() {
    // TODO: implement perform
    store?.cart._itemIds.add(item.id);
  }
}

class Removemutation extends VxMutation<MyStore> {
  final Item item;
  Removemutation(this.item);
  @override
  perform() {
    // TODO: implement perform
    store?.cart._itemIds.remove(item.id);
  }
}
