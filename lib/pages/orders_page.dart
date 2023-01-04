import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/orders.dart' show Orders;

import '../widgets/order_item.dart';
import '../widgets/app_drawer.dart';

class OrdersPage extends StatelessWidget {
  static const routeName = '/orders';

  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ordersData = Provider.of<Orders>(context);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Your Orders'),
        ),
        drawer: const AppDrawer(),
        body: ListView.builder(
          itemCount: ordersData.orders.length,
          itemBuilder: (ctx, i) => OrderItem(ordersData.orders[i]),
        ));
  }
}
