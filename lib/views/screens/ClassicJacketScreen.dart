import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class BeforeAddToCart extends StatefulWidget {
  @override
  BeforeAddToCart({super.key});

  State<BeforeAddToCart> createState() => _BeforeAddToCart();
}

class _BeforeAddToCart extends State<BeforeAddToCart> {
  var fullrating;
  List<String> sizeList = <String>[
    'Size',
    'Size: S',
    'Size: M',
    'Size: L',
    'Size: XL',
    'Size: XXL'
  ];
  String Size = "Size";

  Widget sizedropdown(String input, List<String> list) {
    return DropdownButton<String>(
      onChanged: (String? newValue) {
        setState(() {
          Size = newValue!;
        });
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
            leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.upload_rounded,
                  color: Colors.black,
                  size: 30,
                ),
                onPressed: () {},
              )
            ]),
        body: Column(
          children: [
            Container(
              height: 400,
              width: double.maxFinite,
              color: Colors.amberAccent,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/classicJacket.jpg",
                    fit: BoxFit.cover,
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
                              borderRadius: BorderRadius.circular(50)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Play ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
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
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 30, left: 30),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Classic Jacket",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$80.00",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
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
                              ))
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
                                bottom:
                                    BorderSide(width: 2, color: Colors.grey),
                                top: BorderSide(width: 2, color: Colors.grey),
                                right: BorderSide(
                                    width: 4, color: Colors.grey.shade400))),
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
                                  fontSize: 20, fontWeight: FontWeight.bold),
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
                        )),
                        child: sizedropdown(Size, sizeList),
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
                                  setState(() {
                                    fullrating = ratingvalue;
                                  });
                                })
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
                          "This is a beautiful women classic Jacket for your\ndaily casual look and party time."),
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
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade800,
                        offset: Offset(0.0, 5.0),
                        blurRadius: 15,
                        spreadRadius: 1.0,
                      )
                    ]),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 88, 106, 110),
                        shape: BeveledRectangleBorder(),
                      ),
                      onPressed: () {},
                      child: const Text('Add to cart',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
