import 'package:fashion/modal/btn/rounded_btn.dart';
import 'package:fashion/modal/colCarts/colCarts.dart';
import 'package:fashion/views/screens/Filter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WomensTop extends StatefulWidget {
  @override
  State<WomensTop> createState() => _WomensTopState();
}

class _WomensTopState extends State<WomensTop> {
  var selectedIndex = 0;

  final List<CartItem> cartItems = [
    CartItem(
        image: 'assets/images/top7.jpg',
        name: 'ClassicChic',
        description: 'Silm Fit jean',
        price: 50.00,
        icons: Icons.favorite_outline_sharp),
    CartItem(
      image: 'assets/images/top5.jpg',
      name: 'Fashion Lable',
      description: 'Leather Jacket',
      price: 80.00,
      icons: Icons.favorite_border,
    ),
    CartItem(
      image: 'assets/images/top4.jpg',
      name: 'Forever18',
      description: 'Short White Tee',
      price: 50.00,
      icons: Icons.favorite_border,
    ),
    CartItem(
      image: 'assets/images/top6.jpg',
      name: 'Fashion Label',
      description: 'Long Dress ',
      price: 70.00,
      icons: Icons.favorite_border,
    ),
    CartItem(
      image: 'assets/images/top1.jpg',
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
    CartItem(
        image: 'assets/images/top3.jpg',
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
      image: 'assets/images/top8.jpg',
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
      image: 'assets/images/top2.jpg',
      name: 'Fashion Label',
      description: 'Long Dress ',
      price: 70.00,
      icons: Icons.favorite_border,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var arrSortby = [
      "Most popular",
      "Price: Low to High",
      "Price: High to Low",
      "Recently added",
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Women's Tops",
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_bag_outlined,
                size: 24,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 3,
              thickness: 1,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: MediaQuery.of(context).size.height * 0.7,
                            child: SingleChildScrollView(
                              child: Column(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),
                                    child: Container(
                                      color: Colors.white,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(12),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                IconButton(
                                                  icon:
                                                      Icon(Icons.close_rounded),
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                ),
                                                Text(
                                                  "Sort by",
                                                  style: TextStyle(
                                                    fontSize: 21,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                SizedBox(width: 10),
                                              ],
                                            ),
                                          ),
                                          ListView.separated(
                                            shrinkWrap: true,
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            itemBuilder: (context, index) {
                                              return ListTile(
                                                // title: Text(arrSortby[index]),
                                                // trailing: Icon(Icons.check_outlined),

                                                // DD

                                                title: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(arrSortby[index]),
                                                    if (selectedIndex == index)
                                                      Icon(
                                                          Icons.check_outlined),
                                                  ],
                                                ),
                                                onTap: () {
                                                  setState(() {
                                                    selectedIndex == index;
                                                    print(
                                                        "selected index: ${selectedIndex}");
                                                  });
                                                },

                                                // DDD
                                              );
                                            },
                                            itemCount: arrSortby.length,
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
                                          Container(
                                            padding: EdgeInsets.only(
                                                left: 20, right: 20),
                                            height: 50,
                                            width: double.infinity,
                                            child: RoundedButton(
                                              btnName: "Apply",
                                              bgColor: Colors.teal[900],
                                              textStyle: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Sort",
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Icon(Icons.keyboard_arrow_down_outlined),
                        )
                      ],
                    ),
                  ),
                  Text(
                    "|",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w300),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Filter()),
                      );
                    },
                    child: Text(
                      "Filter",
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Divider(
              height: 3,
              thickness: 1,
              color: Colors.grey,
            ),
            Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  "124 product",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                )),
            Container(
              width: double.infinity,
              color: Colors.amber,
              height: double.maxFinite,
              child: ColCarts(cartItems: cartItems),
            )
          ],
        )),
      ),
    );
  }
}
