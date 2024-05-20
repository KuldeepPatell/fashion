// import 'dart:math';

import 'package:fashion/modal/cards/cards.dart';
import 'package:fashion/modal/carouselSlider/carouselSlid.dart';
import 'package:fashion/modal/rowCarts/rowCarts.dart';
import 'package:fashion/views/screens/newArrivals.dart';
import 'package:fashion/views/screens/shopWomen.dart';
import 'package:flutter/material.dart';
import 'package:fashion/views/story/story.dart';

class DashbordScreen extends StatefulWidget {
  @override
  State<DashbordScreen> createState() => _DashbordScreenState();
}

class _DashbordScreenState extends State<DashbordScreen> {
  final List<Story> stories = [
    Story(username: 'New in', imageUrl: 'assets/images/newin.jpg'),
    Story(username: 'Sale', imageUrl: 'assets/images/sale.jpg'),
    Story(username: 'Brand', imageUrl: 'assets/images/brand.jpg'),
    Story(username: 'Clothing', imageUrl: 'assets/images/clothing.jpg'),
    Story(username: 'Shoes', imageUrl: 'assets/images/shoes.jpg'),
    Story(username: 'Comsetics', imageUrl: 'assets/images/comsetics.jpg'),
    Story(username: 'Electri-Items', imageUrl: 'assets/images/electricity.jpg'),
    Story(username: 'user2', imageUrl: 'assets/images/splashScr.jpg'),
    Story(username: 'user1', imageUrl: 'assets/images/splashScr.jpg'),
    // Story(username: 'user2', imageUrl: 'assets/images/splashScr.jpg'),
  ];

  List<Map<String, String>> items = [
    {
      'imageURL': 'assets/images/summer.jpg',
      'heading': 'Holiday',
      'description': 'Summer style',
    },
    {
      'imageURL': 'assets/images/sale.jpg',
      'heading': 'Party look',
      'description': 'New collection',
    },
    {
      'imageURL': 'assets/images/brand.jpg',
      'heading': 'Summer look',
      'description': 'New style',
    },
    {
      'imageURL': 'assets/images/shoes.jpg',
      'heading': 'Bikini t  ime',
      'description': 'New collection',
    },
  ];

  final List<CartItem> cartItems = [
    CartItem(
        image: 'assets/images/jeans.jpg',
        name: 'ClassicChic',
        description: 'Silm Fit jean',
        price: 50.00,
        icons: Icons.favorite_outline_sharp),
    CartItem(
      image: 'assets/images/jack.jpg',
      name: 'Fashion Lable',
      description: 'Leather Jacket',
      price: 80.00,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Milan",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.grey), // Gray baseline
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.grey), // Gray baseline
                      ),
                      labelStyle:
                          TextStyle(color: Colors.grey), // Set label color
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Text("Search"),
              ],
            ),

            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Text(
            //         "Milan",
            //         style: TextStyle(
            //           color: Colors.black,
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //       SizedBox(width: 10),
            //       Expanded(
            //         child: TextFormField(
            //           decoration: InputDecoration(
            //             labelText: 'Your email',
            //             hintText: 'Enter your email',
            //             focusedBorder: OutlineInputBorder(
            //               borderSide: BorderSide(
            //                   color: Colors.grey), // Set the color here
            //             ),
            //           ),

            //           // child: TextField(
            //           //   decoration: InputDecoration(
            //           //     filled: false,
            //           //   ),
            //           //   textAlignVertical: TextAlignVertical.bottom,
            //           //   style: TextStyle(
            //           //     fontSize: 15.0,
            //           //     height: 1.0,
            //           //   ),
            //         ),
            //       ),
            //       SizedBox(width: 10),
            //       Text("Search"),
            //     ],
            //   ),
            // ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (var story in stories)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: StoryWidget(story: story),
                    ),
                ],
              ),
            ),
            Container(
                height: 390,
                // color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CarouselSlid(),
                  // child: ReusableCarousel(imageList: imageList),
                )),
            Container(
              width: double.infinity,
              height: 500,
              color: Colors.amber,
              child: Cards(items: items),
            ),
            Container(
              width: double.infinity,
              height: 60,
              margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
              color: Color.fromARGB(255, 190, 154, 154),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Free returns,fast refunds  ",
                      style: TextStyle(color: Colors.black, fontSize: 23),
                    ),
                    Icon(
                      Icons.check_box_outlined,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "New Arrivals",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NewArrivals(),
                              ));
                        },
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(text: 'View all  '),
                          TextSpan(
                              text: '➔',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ])),
                      )
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 320,
                    // color: Colors.amber,
                    child: RowCarts(cartItems: cartItems),
                    // child: Cards(items: items),
                  ),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
