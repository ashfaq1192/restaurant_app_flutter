import 'package:flutter/material.dart';
import 'package:restaurant_app/models/menu_item.dart';

class Cart extends ChangeNotifier {
  List<MenuItem> _items = [];

  List<MenuItem> get items => _items;

  double get totalCost => _items.fold(0, (sum, item) => sum + item.price);

  void addItem(MenuItem item) {
    _items.add(item);
    notifyListeners();
  }
}
