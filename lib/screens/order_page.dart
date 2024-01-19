import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import "package:restaurant_app/models/cart.dart";

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order'),
      ),
      body: Consumer<Cart>(
        builder: (context, cart, child) {
          return ListView.builder(
            itemCount: cart.items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(cart.items[index].name),
                subtitle: Text('\$${cart.items[index].price.toString()}'),
              );
            },
          );
        },
      ),
      bottomNavigationBar: Consumer<Cart>(
        builder: (context, cart, child) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total: \$${cart.totalCost.toString()}'),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to Checkout Page
                  },
                  child: Text('Checkout'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
