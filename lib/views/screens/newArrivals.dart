// import 'package:fashion/modal/reusableCarousel/reusableCarousel.dart';
// import 'package:fashion/modal/rowCarts/rowCarts.dart';
// import 'package:fashion/views/screens/Trends.dart';
// import 'package:fashion/views/screens/shopWomen.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// class NewArrivals extends StatelessWidget {
//   final List<dynamic> imageList = [
//     {"id": 1, "image_path": 'assets/images/desert 2.jpg'},
//     {"id": 2, "image_path": 'assets/images/brand.jpg'},
//     {"id": 3, "image_path": 'assets/images/desert.jpg'},
//     {"id": 4, "image_path": 'assets/images/shoes.jpg'},
//     {"id": 5, "image_path": 'assets/images/sale.jpg'},
//     {"id": 6, "image_path": 'assets/images/newin.jpg'},
//   ];

//   final List<CartItem> cartItems = [
//     CartItem(
//         image: 'assets/images/jeans.jpg',
//         name: 'ClassicChic',
//         description: 'Silm Fit jean',
//         price: 50.00,
//         icons: Icons.favorite_outline_sharp),
//     CartItem(
//       image: 'assets/images/jack.jpg',
//       name: 'Fashion Lable',
//       description: 'Leather Jacket',
//       price: 80.00,
//       icons: Icons.favorite_border,
//     ),
//     CartItem(
//       image: 'assets/images/forevers.jpg',
//       name: 'Forever18',
//       description: 'Short White Tee',
//       price: 50.00,
//       icons: Icons.favorite_border,
//     ),
//     CartItem(
//       image: 'assets/images/long.jpg',
//       name: 'Fashion Label',
//       description: 'Long Dress ',
//       price: 70.00,
//       icons: Icons.favorite_border,
//     ),
//     CartItem(
//       image: 'assets/images/forevers.jpg',
//       name: 'Forever18',
//       description: 'Short White Tee',
//       price: 50.00,
//       icons: Icons.favorite_border,
//     ),
//     CartItem(
//       image: 'assets/images/longg.jpg',
//       name: 'Fashion Label',
//       description: 'Long Dress ',
//       price: 70.00,
//       icons: Icons.favorite_border,
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Column(
//           children: [
//             Expanded(
//               flex: 4,
//               child: Container(
//                 color: Colors.amber,
//                 child: Stack(children: [
//                   ReusableCarousel(imageList: imageList),
//                   Positioned(
//                       bottom: 30,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(
//                                 left: 20, top: 10, bottom: 10),
//                             child: Text("New Arrivals",
//                                 style: TextStyle(
//                                     color: Colors.white, fontSize: 18)),
//                           ),
//                           Container(
//                             padding: EdgeInsets.only(left: 20),
//                             width: 250,
//                             child: Text(
//                               "Welcome to the tropics",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 35),
//                             ),
//                           ),
//                           Container(
//                             height: 3,
//                             margin: EdgeInsets.only(left: 20, right: 100),
//                             // width: MediaQuery.of(context).size.width,
//                             width: double.maxFinite,
//                             // thickness: 50,
//                             color: Colors.white,
//                           ),
//                           // Text("fdsk"),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(left: 20),
//                             child: Row(
//                               children: [
//                                 Text('Shop new swim',
//                                     style: TextStyle(
//                                         color: Colors.white, fontSize: 18)),
//                                 Icon(
//                                   Icons.arrow_forward,
//                                   color: Colors.white,
//                                 )
//                               ],
//                             ),
//                           )
//                         ],
//                       ))
//                 ]),
//               ),
//             ),
//             Expanded(
//                 flex: 3,
//                 child: Container(
//                   padding: EdgeInsets.only(left: 20, top: 20),
//                   // color: Colors.red,
//                   child: Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         // crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Text(
//                             "Bestsellers",
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 23,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                           InkWell(
//                               onTap: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) => Trends(),
//                                     ));
//                               },
//                               child: Text(
//                                 "View all    ",
//                                 style: TextStyle(
//                                     color: Colors.grey,
//                                     fontSize: 15,
//                                     fontWeight: FontWeight.bold),
//                               )),
//                         ],
//                       ),
//                       // Container(
//                       //   color: Colors.red,
//                       //   width: 100,
//                       //   height: 100,
//                       // ),
//                       Container(
//                         width: double.infinity,
//                         height: 300,
//                         color: Colors.amber,
//                         child: RowCarts(cartItems: cartItems),
//                         // child: Cards(items: items),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       )
//                     ],
//                   ),
//                 ))
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:fashion/modal/reusableCarousel/reusableCarousel.dart';
import 'package:fashion/modal/rowCarts/rowCarts.dart';
import 'package:fashion/views/screens/Trends.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewArrivals extends StatelessWidget {
  final List<dynamic> imageList = [
    {"id": 1, "image_path": 'assets/images/desert 2.jpg'},
    {"id": 2, "image_path": 'assets/images/brand.jpg'},
    {"id": 3, "image_path": 'assets/images/desert.jpg'},
    {"id": 4, "image_path": 'assets/images/shoes.jpg'},
    {"id": 5, "image_path": 'assets/images/sale.jpg'},
    {"id": 6, "image_path": 'assets/images/newin.jpg'},
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
        child: Container(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                // color: Colors.amber,
                child: Stack(
                  children: [
                    ReusableCarousel(imageList: imageList),
                    Positioned(
                      bottom: 30,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 10, bottom: 10),
                            child: Text(
                              "New Arrivals",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            width: 250,
                            child: Text(
                              "Welcome to the tropics",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 35,
                              ),
                            ),
                          ),
                          Container(
                            height: 3,
                            margin: EdgeInsets.only(left: 20, right: 100),
                            width: double.maxFinite,
                            color: Colors.white,
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Text(
                                  'Shop new swim',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, top: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Bestsellers",
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
                                builder: (context) => Trends(),
                              ),
                            );
                          },
                          child: Text(
                            "View all    ",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: 300,
                      child: RowCarts(cartItems: cartItems),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
