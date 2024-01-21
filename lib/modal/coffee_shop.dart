import 'package:chaicraft/modal/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
// coffee for sale
  final List<Coffee> _shop = [
    Coffee(
        name: 'Café au lait',
        price: '4.10',
        imagePath: 'assets/images/splash-screen.jpeg'),
    Coffee(
        name: 'Affogato',
        price: '4.10',
        imagePath: 'assets/images/splash-screen.jpeg'),
    Coffee(
        name: 'Irish coffee',
        price: '4.10',
        imagePath: 'assets/images/splash-screen.jpeg'),
    Coffee(
        name: 'Cold brew',
        price: '4.10',
        imagePath: 'assets/images/splash-screen.jpeg'),
    Coffee(
        name: 'Long black',
        price: '4.10',
        imagePath: 'assets/images/splash-screen.jpeg'),
    Coffee(
        name: 'Red eye',
        price: '4.10',
        imagePath: 'assets/images/splash-screen.jpeg'),
    Coffee(
        name: 'Doppio',
        price: '4.10',
        imagePath: 'assets/images/splash-screen.jpeg'),
    Coffee(
        name: 'Ristretto',
        price: '4.10',
        imagePath: 'assets/images/splash-screen.jpeg'),
    Coffee(
        name: 'Arabica',
        price: '4.10',
        imagePath: 'assets/images/splash-screen.jpeg'),
    Coffee(
        name: 'Robusta',
        price: '4.10',
        imagePath: 'assets/images/splash-screen.jpeg'),
    Coffee(
        name: 'Black Coffee',
        price: '4.10',
        imagePath: 'assets/images/splash-screen.jpeg'),
    Coffee(
        name: 'Frappuccino',
        price: '4.10',
        imagePath: 'assets/images/splash-screen.jpeg'),
    Coffee(
        name: 'Decaffeination',
        price: '4.10',
        imagePath: 'assets/images/splash-screen.jpeg'),
    Coffee(
        name: 'Coffea liberica',
        price: '4.10',
        imagePath: 'assets/images/splash-screen.jpeg'),
    Coffee(
        name: 'Double espresso',
        price: '4.10',
        imagePath: 'assets/images/splash-screen.jpeg'),
    Coffee(
        name: 'Drip Coffee',
        price: '4.10',
        imagePath: 'assets/images/splash-screen.jpeg'),
    Coffee(
        name: 'Lungo',
        price: '4.10',
        imagePath: 'assets/images/splash-screen.jpeg'),
    Coffee(
        name: 'Excelsa',
        price: '4.10',
        imagePath: 'assets/images/splash-screen.jpeg'),
    Coffee(
        name: 'Galão',
        price: '4.10',
        imagePath: 'assets/images/splash-screen.jpeg'),
    Coffee(
        name: 'Espresso shot',
        price: '4.10',
        imagePath: 'assets/images/splash-screen.jpeg'),
    Coffee(
        name: 'Pour over',
        price: '4.10',
        imagePath: 'assets/images/splash-screen.jpeg'),
    Coffee(
        name: 'Iced coffee',
        price: '4.10',
        imagePath: 'assets/images/splash-screen.jpeg'),
    Coffee(
        name: 'Breve',
        price: '4.10',
        imagePath: 'assets/images/splash-screen.jpeg'),
    Coffee(
        name: 'Iced latte',
        price: '4.10',
        imagePath: 'assets/images/splash-screen.jpeg'),
    Coffee(
        name: 'Latte',
        price: '4.10',
        imagePath: 'assets/images/splash-screen.jpeg'),
    Coffee(
        name: 'Cappuccino',
        price: '4.10',
        imagePath: 'assets/images/splash-screen.jpeg'),
  ];

// user cart
  final List<Coffee> _userCart = [];

//  get coffee list
  List<Coffee> get coffeeShop => _shop;

// get user cart
  List<Coffee> get userCart => _userCart;

// add item to cart
  void addItemToCart(Coffee coffee) {
    int index = _userCart.indexWhere((element) => element.name == coffee.name);

    if (index != -1) {
      _userCart[index].quantity++;
    } else {
      _userCart.add(coffee);
    }

    notifyListeners();
  }

  void increaseItemQuantity(Coffee coffee) {
    // Check if the coffee is already in the cart
    int index = _userCart.indexWhere((element) => element.name == coffee.name);

    if (index != -1) {
      // If coffee is already in the cart, increase the quantity
      _userCart[index].quantity++;
      notifyListeners();
    }
  }

  void removeItemToCart(Coffee coffee) {
    int index = _userCart.indexWhere((element) => element.name == coffee.name);

    if (index != -1) {
      if (_userCart[index].quantity > 1) {
        _userCart[index].quantity--;
      } else {
        _userCart.removeAt(index);
      }

      notifyListeners();
    }
  }
}
