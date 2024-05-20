import 'package:fashion/modal/rowCarts/rowCarts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductView extends StatelessWidget {
  final String imageUrl;

  ProductView({required this.imageUrl});
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  child: Image.asset(
                    "assets/images/droppp.jpg",
                    fit: BoxFit.cover,
                  ),
                  // child: Image.asset(
                  //   imageUrl,
                  //   fit: BoxFit.cover,
                  // ),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: IconButton(
                    icon: Icon(
                      Icons.share,
                      color: Colors.grey,
                    ),
                    onPressed: () {},
                  ),
                ),
              ]),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "10 next Spring fashion trends you need to know.",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  height: 20,
                  thickness: 5,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images/sofa.jpg"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kelly Wong',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "1 day ago | Trends",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.favorite_outline,
                          color: Colors.grey,
                        ),
                        Text(
                          " 680  ",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.grey,
                        ),
                        Text(
                          " 984",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "NYFW is about to come an end, leaving us with an idea of what we'll all be wearing next spring. We're predicting big pants, short shorts, and one bold color that's much brighter than millennial lavender. Scroll through for the biggest trends from the Spring 2020 season thus far.",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Spring Popular",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "12 items",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 320,
                color: Colors.amber,
                child: RowCarts(cartItems: cartItems),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
