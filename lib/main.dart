import 'package:flutter/material.dart';

import './pages/products_overview_page.dart';
import './pages/product_detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Lato',
      ),
      home: ProductOverviewPage(),
      routes: {
        ProductDetailPage.routeName: (ctx) => const ProductDetailPage(),
      },
    );
  }
}
