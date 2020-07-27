import 'package:flutter/material.dart';

import '../product.dart';
import 'product_list_item.dart';

class ProductListView extends StatelessWidget {
  final Product _product;

  const ProductListView(this._product);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView.separated(
        padding: EdgeInsets.only(
          top: 8,
          bottom: 8,
        ),
        physics: BouncingScrollPhysics(),
        itemCount: _product.list.length,
        itemBuilder: (BuildContext context, int index) {
          return ProductListItem(_product.list[index]);
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
      ),
    );
  }
}
