class Product {
  final _productList = List<_ProductUnit>();

  Product.fromJson(Map<String, dynamic> jsonBody) {
    for (int i = 0; i < jsonBody["products"].length; i++) {
      _productList.add(_ProductUnit(jsonBody["products"][i]));
    }
  }

  List<_ProductUnit> get list => _productList;
}

class _ProductUnit {
  String _imagePath;
  String _name;
  String _priceVat;

  _ProductUnit(dynamic jsonItem) {
    _imagePath = jsonItem["image"];
    _name = jsonItem["name"];
    _priceVat = jsonItem["price_vat"];
  }

  String get image => _imagePath;

  String get name => _name;

  String get price => _priceVat;
}
