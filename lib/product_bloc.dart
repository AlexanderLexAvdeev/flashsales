import 'dart:async';

import 'product.dart';
import 'repository.dart';

final productBloc = ProductBloc();

class ProductBloc {
  final _repository = Repository();
  final _productStreamController = StreamController<Product>();

  Stream<Product> get fetchProduct => _productStreamController.stream;

  Future<void> getProduct(String query) async {
    await _repository.getProduct(query).then(
      (product) {
        _productStreamController.sink.add(product);
      },
      onError: (error) {
        _productStreamController.sink.addError(error);
      },
    );
  }

  void dispose() {
    _productStreamController.close();
  }
}
