import 'package:flutter/material.dart';

import 'search_page.dart';

class MobileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flash Sales",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SearchPage(),
    );
  }
}
