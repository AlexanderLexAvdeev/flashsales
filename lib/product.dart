class Product {
  final _productList = List<ProductUnit>();

  Product.fromJson(Map<String, dynamic> jsonBody) {
    int productListLength = jsonBody["products"]?.length ?? 0;
    for (int i = 0; i < productListLength; i++) {
      _productList.add(
        ProductUnit(jsonBody["products"][i]),
      );
    }
  }

  List<ProductUnit> get list => _productList;
}

class ProductUnit {
  String _imagePath;
  String _name;
  String _priceVat;

  ProductUnit(dynamic jsonItem) {
    _imagePath = jsonItem["image"];
    _name = jsonItem["name"];
    _priceVat = jsonItem["price_vat"].toString();
  }

  String get image => _imagePath;

  String get name => _name;

  String get price => _priceVat;
}
