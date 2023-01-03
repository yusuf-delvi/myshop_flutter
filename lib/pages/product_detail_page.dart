import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  static const routeName = '/product-detail';

  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(productId),
      ),
    );
  }
}
