import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemsFound extends StatelessWidget {
  ItemsFound({super.key});

  final List<String> sizeList = <String>[
    'Size',
    'Size: S',
    'Size: M',
    'Size: L',
    'Size: XL',
    'Size: XXL'
  ];
  final String size = "Size";

  Widget sizedropdown(String input, List<String> list) {
    return DropdownButton<String>(
      onChanged: (String? newValue) {
        // No state change in a stateless widget
      },
      isExpanded: true,
      menuMaxHeight: 350,
      value: input,
      items: list.map<DropdownMenuItem<String>>(
        (value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(fontSize: 20),
            ),
          );
        },
      ).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_bag_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.file_upload_outlined),
          )
        ],
      ),
      body:
       SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 400,
                    width: double.infinity,
                    child: Image.asset(
                      "assets/images/beaa.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: 30,
                    bottom: 20,
                    child: InkWell(
                      child: Container(
                        height: 25,
                        width: 70,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Play ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                            Icon(
                              Icons.play_arrow_outlined,
                              color: Colors.white,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, right: 30, left: 30),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Classic Jacket",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$80.00",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Save",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_outline_outlined,
                                size: 20,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 170,
                          height: 60,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(width: 2, color: Colors.grey),
                              top: BorderSide(width: 2, color: Colors.grey),
                              right: BorderSide(
                                width: 4,
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Color",
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                "Blue   ",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 15, right: 5, top: 5),
                          width: 170,
                          height: 60,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(width: 2, color: Colors.grey),
                              top: BorderSide(width: 2, color: Colors.grey),
                            ),
                          ),
                          child: sizedropdown(size, sizeList),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Description",
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "23 ratings   ",
                                style: TextStyle(fontSize: 15),
                              ),
                              RatingBar.builder(
                                initialRating: 4,
                                minRating: 1,
                                unratedColor: Colors.grey,
                                itemCount: 5,
                                itemSize: 15,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 1),
                                updateOnDrag: true,
                                itemBuilder: (context, index) => Icon(
                                  Icons.star,
                                  color: Colors.black,
                                ),
                                onRatingUpdate: (ratingvalue) {
                                  // No state change in a stateless widget
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "This is a beautiful women classic Jacket for your\ndaily casual look and party time.",
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Divider(
                        height: 50,
                        thickness: 3,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 15),
                      width: double.maxFinite,
                      height: 50,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade800,
                            offset: Offset(0.0, 5.0),
                            blurRadius: 15,
                            spreadRadius: 1.0,
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 88, 106, 110),
                          shape: BeveledRectangleBorder(),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Add to cart',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}




































// import 'package:fashion/modal/colCarts/colCarts.dart';
// import 'package:fashion/views/screens/charged.dart';

// import 'package:flutter/material.dart';

// class ItemsFound extends StatefulWidget {
//   const ItemsFound({super.key});

//   @override
//   State<ItemsFound> createState() => _ItemsFoundState();
// }

// class _ItemsFoundState extends State<ItemsFound> {
//   @override
//   Widget build(BuildContext context) {
//     // Sample data for cart items

//     final List<CartItem> cartItems = [
//       CartItem(
//           image: 'assets/images/top7.jpg',
//           name: 'ClassicChic',
//           description: 'Silm Fit jean',
//           price: 50.00,
//           icons: Icons.favorite_outline_sharp),
//       CartItem(
//         image: 'assets/images/top5.jpg',
//         name: 'Fashion Lable',
//         description: 'Leather Jacket',
//         price: 80.00,
//         icons: Icons.favorite_border,
//       ),
//       CartItem(
//         image: 'assets/images/top4.jpg',
//         name: 'Forever18',
//         description: 'Short White Tee',
//         price: 50.00,
//         icons: Icons.favorite_border,
//       ),
//       CartItem(
//         image: 'assets/images/top6.jpg',
//         name: 'Fashion Label',
//         description: 'Long Dress ',
//         price: 70.00,
//         icons: Icons.favorite_border,
//       ),
//       CartItem(
//         image: 'assets/images/top1.jpg',
//         name: 'Forever18',
//         description: 'Short White Tee',
//         price: 50.00,
//         icons: Icons.favorite_border,
//       ),
//       CartItem(
//         image: 'assets/images/longg.jpg',
//         name: 'Fashion Label',
//         description: 'Long Dress ',
//         price: 70.00,
//         icons: Icons.favorite_border,
//       ),
//       CartItem(
//           image: 'assets/images/top3.jpg',
//           name: 'ClassicChic',
//           description: 'Silm Fit jean',
//           price: 50.00,
//           icons: Icons.favorite_outline_sharp),
//       CartItem(
//         image: 'assets/images/jack.jpg',
//         name: 'Fashion Lable',
//         description: 'Leather Jacket',
//         price: 80.00,
//         icons: Icons.favorite_border,
//       ),
//       CartItem(
//         image: 'assets/images/top8.jpg',
//         name: 'Forever18',
//         description: 'Short White Tee',
//         price: 50.00,
//         icons: Icons.favorite_border,
//       ),
//       CartItem(
//         image: 'assets/images/long.jpg',
//         name: 'Fashion Label',
//         description: 'Long Dress ',
//         price: 70.00,
//         icons: Icons.favorite_border,
//       ),
//       CartItem(
//         image: 'assets/images/forevers.jpg',
//         name: 'Forever18',
//         description: 'Short White Tee',
//         price: 50.00,
//         icons: Icons.favorite_border,
//       ),
//       CartItem(
//         image: 'assets/images/top2.jpg',
//         name: 'Fashion Label',
//         description: 'Long Dress ',
//         price: 70.00,
//         icons: Icons.favorite_border,
//       ),
//     ];

//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Stack(
//                 children: [
//                   Container(
//                     height: 300,
//                     width: double.infinity,
//                     child: Image.asset(
//                       "assets/images/beaa.jpg",
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   Positioned(
//                     top: 10,
//                     left: 10,
//                     child: IconButton(
//                       icon: Icon(Icons.camera_alt_outlined),
//                       onPressed: () {
//                         print("object");
//                       },
//                     ),
//                   ),
//                   Positioned(
//                     top: 10,
//                     right: 10,
//                     child: IconButton(
//                       icon: Icon(
//                         Icons.search,
//                         color: Colors.grey,
//                         size: 35,
//                       ),
//                       onPressed: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => Charged(),
//                             ));
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 10),
//               Center(
//                 child: Text(
//                   "18 Items found",
//                   style: TextStyle(
//                     fontSize: 21,
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10),
//               Divider(
//                 height: 3,
//                 thickness: 1,
//                 color: Colors.grey,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(5.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     InkWell(
//                       onTap: () {},
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Text(
//                             "Sort",
//                             style: TextStyle(
//                               fontSize: 21,
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(top: 8),
//                             child: Icon(Icons.keyboard_arrow_down_outlined),
//                           )
//                         ],
//                       ),
//                     ),
//                     Text(
//                       "|",
//                       style: TextStyle(
//                         fontSize: 35,
//                         fontWeight: FontWeight.w300,
//                       ),
//                     ),
//                     Text(
//                       "Filter",
//                       style: TextStyle(
//                         fontSize: 21,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 2),
//               Divider(
//                 height: 3,
//                 thickness: 1,
//                 color: Colors.grey,
//               ),
//               SizedBox(height: 10),
//               Container(
//                 width: double.infinity,
//                 color: Colors.amber,
//                 height: MediaQuery.of(context).size.height,
//                 // child: ColCarts(cartItems: cartItems),
//                 child: ColCarts(cartItems: cartItems),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
