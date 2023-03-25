import 'package:flutter/material.dart';
import 'package:my_doc/Pages/Homepage.dart';
import 'package:my_doc/Pages/home_detail_page.dart';

import '../../models/catalog.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.getbyPostion(index);
        return InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Homedetailspage(catalog: catalog),
                )),
            child: CatalogItem(catalog: catalog));
      },
    );
  }
}
