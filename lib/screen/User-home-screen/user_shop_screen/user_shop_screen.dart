import 'package:chaicraft/constant/colors.dart';
import 'package:chaicraft/constant/text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:chaicraft/modal/coffee.dart';
import 'package:chaicraft/modal/coffee_shop.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  void addToCart(BuildContext context, Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).addItemToCart(coffee);

    Fluttertoast.showToast(
      msg: '${coffee.name} added to cart',
      gravity: ToastGravity.TOP,
      toastLength: Toast.LENGTH_SHORT,
      backgroundColor: Colors.white,
      textColor: choclateColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Consumer<CoffeeShop>(
        builder: (context, coffeeShop, child) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Text(
                    'How would you like your coffee?',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF6F4E37),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: coffeeShop.coffeeShop.length,
                      itemBuilder: (context, index) {
                        Coffee coffee = coffeeShop.coffeeShop[index];
                        return Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(12)),
                          margin: const EdgeInsets.only(bottom: 10),
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 10),
                          child: ListTile(
                            title: Text(coffee.name),
                            subtitle: Text('Price: \$${coffee.price}'),
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  25), // Set half of your desired width/height
                              child: Image.asset(
                                coffee.imagePath,
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                            trailing: IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () {
                                addToCart(context, coffee);
                              },
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
