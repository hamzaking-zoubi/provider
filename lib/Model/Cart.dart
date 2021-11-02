import 'package:flutter/material.dart';
import 'package:flutter_app_provider/Item.dart';

class Cart with ChangeNotifier {
  List<Item> _item = [];
  double price = 0.0;

  void add(Item item) {
    _item.add(item);
    price += item.price!;
    notifyListeners();
  }  void remove(Item item) {
    _item.remove(item);
    price -= item.price!;
    notifyListeners();
  }

  int get count {
    return _item.length;
  }
List<Item>get listt{
    return _item;

}
  double get totalePrice {
    return price;
  }
}
