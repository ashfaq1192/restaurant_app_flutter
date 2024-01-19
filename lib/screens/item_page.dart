import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app/models/menu_item.dart';
import 'package:restaurant_app/models/cart.dart';

class ItemPage extends StatelessWidget {
  final MenuItem menuItem;

  ItemPage({required this.menuItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(menuItem.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(menuItem.imagePath, height: 200, width: 200),

          // Item details
          Text('${menuItem.name}', style: TextStyle(fontSize: 26, color: Colors.black87)),
          Text('${menuItem.description}', style: TextStyle(fontSize: 17, color: Colors.black)),
          Text('Price: \$${menuItem.price}', style: TextStyle(fontSize: 20, color: Colors.black)),

          // Add to Cart button
          ElevatedButton(
            onPressed: () {
              Provider.of<Cart>(context, listen: false).addItem(menuItem);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Item added to cart')),
              );
            },
            child: Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}
