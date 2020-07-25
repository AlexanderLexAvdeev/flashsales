import 'dart:convert';

import 'product.dart';
import 'rest_api.dart';

class Repository {
  final _restApi = RestApi();

  Future<Product> getProduct(String query) async {
    return Product.fromJson(
      json.decode(
        await _restApi.findProduct(query),
      ),
    );
  }
}
