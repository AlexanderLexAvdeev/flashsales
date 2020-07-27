import 'package:flashsales/product.dart';
import 'package:flutter/material.dart';

class ProductListItem extends StatelessWidget {
  final ProductUnit productUnit;

  const ProductListItem(this.productUnit);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        productUnit.image,
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
        productUnit.name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Text(
        "${productUnit.price} BYN",
      ),
    );
  }
}
