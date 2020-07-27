import 'package:flutter/material.dart';

import 'product.dart';
import 'product_bloc.dart';
import 'widgets/product_list_view.dart';
import 'widgets/search_product_app_bar.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildSearchProductAppBar(),
      body: StreamBuilder(
        stream: productBloc.fetchProduct,
        builder: (BuildContext context, AsyncSnapshot<Product> snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text(
                "Запрос не выполнен",
              ),
            );
          }
          if (snapshot.hasData) {
            Product product = snapshot.data;
            if (product.list.isEmpty) {
              return Center(
                child: Text(
                  "По данному запросу ничего не найдено",
                ),
              );
            }
            return ProductListView(product);
          }
          return Center(
            child: Icon(
              Icons.search,
              size: 96,
              color: Colors.grey,
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    productBloc.dispose();
    super.dispose();
  }
}
