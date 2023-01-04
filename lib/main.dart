import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/products.dart';
import './providers/cart.dart';
import './providers/orders.dart';

import './pages/products_overview_page.dart';
import './pages/product_detail_page.dart';
import './pages/cart_page.dart';
import './pages/orders_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => Products()),
        ChangeNotifierProvider(create: (ctx) => Cart()),
        ChangeNotifierProvider(create: (ctx) => Orders()),
      ],
      child: MaterialApp(
        title: 'My Shop',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Lato',
        ),
        home: const ProductOverviewPage(),
        routes: {
          ProductDetailPage.routeName: (ctx) => const ProductDetailPage(),
          CartPage.routeName: (ctx) => const CartPage(),
          OrdersPage.routeName: (ctx) => const OrdersPage(),
        },
      ),
    );
  }
}
