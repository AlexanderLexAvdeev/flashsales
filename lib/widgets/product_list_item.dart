import 'package:flashsales/product.dart';
import 'package:flutter/material.dart';

class ProductListItem extends StatelessWidget {
  final ProductUnit _productUnit;

  const ProductListItem(this._productUnit);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        width: 48,
        height: 48,
        child: Stack(
          children: <Widget>[
            Icon(
              Icons.image,
              color: Colors.grey,
            ),
            Image.network(
              _productUnit.image,
            ),
          ],
        ),
      ),
      title: Text(
        _productUnit.name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Text(
        "${_productUnit.price} BYN",
      ),
    );
  }
}
