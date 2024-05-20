import 'package:fashion/modal/rowCarts/rowCarts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  final List<CartItem> cartItems = [
    CartItem(
        image: 'assets/images/sht.jpg',
        name: 'Forever18',
        description: 'Short Sleeve Top',
        price: 50.00,
        icons: Icons.favorite_outline_sharp),
    CartItem(
      image: 'assets/images/sht2.jpg',
      name: 'Jean Short',
      description: 'Leather Jacket',
      price: 80.00,
      icons: Icons.favorite_border,
    ),
    CartItem(
      image: 'assets/images/sht1.jpg',
      name: 'Forever18',
      description: 'Short White Tee',
      price: 50.00,
      icons: Icons.favorite_border,
    ),
    CartItem(
      image: 'assets/images/long.jpg',
      name: 'Fashion Label',
      description: 'Long Dress ',
      price: 70.00,
      icons: Icons.favorite_border,
    ),
    CartItem(
      image: 'assets/images/forevers.jpg',
      name: 'Forever18',
      description: 'Short White Tee',
      price: 50.00,
      icons: Icons.favorite_border,
    ),
    CartItem(
      image: 'assets/images/longg.jpg',
      name: 'Fashion Label',
      description: 'Long Dress ',
      price: 70.00,
      icons: Icons.favorite_border,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var arrSearchCategory = [
      "Clothing",
      "Shoes",
      "Bags",
      "Accessories",
      "Jewelry and Watches"
    ];

    return Scaffold(
      appBar: AppBar(
        // titleSpacing: 20,
        title: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text("Search", style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: IconButton(
            icon: Icon(Icons.close_outlined),
            onPressed: () {
              // Navigator.pop(context);
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 30),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 30,
                  ),
                  hintText: 'Try  Jacket',
                  hintStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                  filled: false,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 20, bottom: 10),
              child: Text(
                "Popular this week",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 20, bottom: 10),
              color: Colors.white,
              width: double.infinity,
              height: 320,
              child: RowCarts(cartItems: cartItems),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 20, bottom: 10),
              child: Text(
                "Search by category",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(arrSearchCategory[index]),
                );
              },
              itemCount: arrSearchCategory.length,
              separatorBuilder: (context, index) {
                return Divider(
                  height: 20,
                  thickness: 1,
                );
              },
            ),
            Divider(
              height: 20,
              thickness: 1,
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
