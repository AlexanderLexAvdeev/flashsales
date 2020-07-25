import 'dart:async';

import 'product.dart';
import 'repository.dart';

final productBloc = ProductBloc();

class ProductBloc {
  final _repository = Repository();
  final _productStreamController = StreamController<Product>();

  Stream<Product> get fetchProduct => _productStreamController.stream;

  Future<void> getProduct(String query) async {
    _productStreamController.sink.add(
      await _repository.getProduct(query),
    );
  }

  void dispose() {
    _productStreamController.close();
  }
}
