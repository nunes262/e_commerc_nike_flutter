import 'package:e_commerc_nike/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Air Jordan',
        price: '600',
        imagePath: 'lib/images/tenis_2.png',
        description: 'The Air Jordan.'),
    Shoe(
        name: 'Air Max Alpha',
        price: '1200',
        imagePath: 'lib/images/tenis_1.png',
        description: 'The Air Max Alpha'),
    Shoe(
        name: 'Air max 90',
        price: '1300',
        imagePath: 'lib/images/airmax90.png',
        description: 'The Air Max 90'),
    Shoe(
        name: 'Nike Revolution',
        price: '450',
        imagePath: 'lib/images/tenis_4.jpeg',
        description: 'The Nike Revolution.')
  ];

  List<Shoe> UseCart = [];

  List<Shoe> getUserCart() {
    return UseCart;
  }

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  void addItemtoCart(Shoe shoe) {
    UseCart.add(shoe);
    notifyListeners();
  }

  void removeItemfromCart(Shoe shoe) {
    UseCart.remove(shoe);
    notifyListeners();
  }
}
