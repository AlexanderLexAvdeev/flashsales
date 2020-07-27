import 'package:flutter/material.dart';

import '../product_bloc.dart';

Widget buildSearchProductAppBar() {
  final _searchController = TextEditingController();

  return AppBar(
    title: TextField(
      decoration: InputDecoration(
        hintText: "Поиск по Flash Sales",
      ),
      controller: _searchController,
    ),
    centerTitle: false,
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () {
          productBloc.getProduct(_searchController.text);
        },
        tooltip: "найти",
      ),
    ],
  );
}
