import 'package:chaicraft/modal/coffee.dart';
import 'package:chaicraft/modal/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coffee Shop'),
      ),
      body: Consumer<CoffeeShop>(
        builder: (context, coffeeShop, child) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  const Text(
                    'How would you like your coffee?',
                    style: TextStyle(
                      fontSize: 15,
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
                        return ListTile(
                          title: Text(coffee.name),
                          subtitle: Text('Price: \$${coffee.price}'),
                          leading: Image.asset(
                            coffee.imagePath,
                            width: 50, // Set the width as per your requirement
                            height:
                                50, // Set the height as per your requirement
                            fit: BoxFit
                                .cover, // You can use other BoxFit options
                          ),
                          trailing: IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {
                              coffeeShop.addItemToCart(coffee);
                            },
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
