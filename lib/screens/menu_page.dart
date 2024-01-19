import 'package:flutter/material.dart';
import 'package:restaurant_app/models/menu_item.dart';
import 'item_page.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Sample menu items
    List<MenuItem> menuItems = [
      MenuItem(name: 'Bannu Beef Pulao: 1 kg', description: 'Description: 1 kg serving for two persons', price: 1000, imagePath: 'assets/beefonekg.jpg'),
      MenuItem(name: 'Bannu Beef Pulao: Half kg', description: 'Description: Half kg serving for one person', price: 500, imagePath: 'assets/beefhalfkg.jpg'),
      MenuItem(name: 'Bannu Mutton Pulao: 1 kg', description: 'Description: 1 kg serving for two persons', price: 1600, imagePath: 'assets/muttononekg.jpg'),
      MenuItem(name: 'Bannu Mutton Pulao: Half kg', description: 'Description: Half kg serving for two persons', price: 800, imagePath: 'assets/muttonhalfkg.jpg'),
      // Add more items as needed
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(menuItems[index].name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ItemPage(menuItem: menuItems[index])),
              );
            },
          );
        },
      ),
    );
  }
}
