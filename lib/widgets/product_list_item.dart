import 'package:flashsales/product.dart';
import 'package:flutter/material.dart';

class ProductListItem extends StatelessWidget {
  final ProductUnit _productUnit;

  const ProductListItem(this._productUnit);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        _productUnit.image,
        width: 48,
        height: 48,
        loadingBuilder: (BuildContext context, Widget child,
            ImageChunkEvent loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes
                  : null,
            ),
          );
        },
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
