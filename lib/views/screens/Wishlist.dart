import 'package:fashion/modal/colCarts/colCarts.dart';
import 'package:fashion/views/screens/SelectedItemScreen.dart';
// import 'package:fashion/views/screens/itemsFound.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wishlist extends StatelessWidget {
  final List<CartItem> cartItems = [
    CartItem(
      image: 'assets/images/jeans.jpg',
      name: 'ClassicChic',
      description: 'Silm Fit jean',
      price: 50.00,
      icons: Icons.shopping_bag_outlined,
    ),
    CartItem(
      image: 'assets/images/jack.jpg',
      name: 'Fashion Lable',
      description: 'Leather Jacket',
      price: 80.00,
      icons: Icons.shopping_bag_outlined,
    ),
    CartItem(
      image: 'assets/images/forevers.jpg',
      name: 'Forever18',
      description: 'Short White Tee',
      price: 50.00,
      icons: Icons.shopping_bag_outlined,
    ),
    CartItem(
      image: 'assets/images/long.jpg',
      name: 'Fashion Label',
      description: 'Long Dress ',
      price: 70.00,
      icons: Icons.shopping_bag_outlined,
    ),
    CartItem(
      image: 'assets/images/forevers.jpg',
      name: 'Forever18',
      description: 'Short White Tee',
      price: 50.00,
      icons: Icons.shopping_bag_outlined,
    ),
    CartItem(
      image: 'assets/images/longg.jpg',
      name: 'Fashion Label',
      description: 'Long Dress ',
      price: 70.00,
      icons: Icons.shopping_bag_outlined,
    ),
    CartItem(
        image: 'assets/images/jeans.jpg',
        name: 'ClassicChic',
        description: 'Silm Fit jean',
        price: 50.00,
        icons: Icons.shopping_bag_outlined),
    CartItem(
      image: 'assets/images/jack.jpg',
      name: 'Fashion Lable',
      description: 'Leather Jacket',
      price: 80.00,
      icons: Icons.shopping_bag_outlined,
    ),
    CartItem(
      image: 'assets/images/forevers.jpg',
      name: 'Forever18',
      description: 'Short White Tee',
      price: 50.00,
      icons: Icons.shopping_bag_outlined,
    ),
    CartItem(
      image: 'assets/images/long.jpg',
      name: 'Fashion Label',
      description: 'Long Dress ',
      price: 70.00,
      icons: Icons.shopping_bag_outlined,
    ),
    CartItem(
      image: 'assets/images/forevers.jpg',
      name: 'Forever18',
      description: 'Short White Tee',
      price: 50.00,
      icons: Icons.shopping_bag_outlined,
    ),
    CartItem(
      image: 'assets/images/longg.jpg',
      name: 'Fashion Label',
      description: 'Long Dress ',
      price: 70.00,
      icons: Icons.shopping_bag_outlined,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Wishlist",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(
              "Edit",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "30 Items",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SelectedItemScreen(),
                          ));
                    },
                    child: Text(
                      "Sort by:Recently added",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                height: 20,
                thickness: 5,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: double.maxFinite,
              // color: Colors.amber,
              child: ColCarts(cartItems: cartItems),
            )
          ],
        )),
      ),
    );
  }
}
