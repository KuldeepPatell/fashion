import 'package:fashion/views/screens/PopUpScreen.dart';
import 'package:fashion/views/screens/secondSearch.dart';
import 'package:fashion/views/screens/showproduct.dart';
import 'package:flutter/material.dart';

class Trends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trends"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondSearch(),
                    ));
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ShowProduct(),
                    ));
              },
              icon: Icon(Icons.shopping_bag_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ItemsNames(),
              ),
              Container(
                color: Colors.brown[50],
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) => PopUpScreen());
                        },
                        child: Container(
                          width: double.infinity,
                          // height: 500,
                          // child: Image.asset(widget.imageUrl),
                          // child: Image.asset(imageUrl),
                          child: Image.asset(
                            "assets/images/boo.jpg",
                            width: double.infinity,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Spring tops perfect for the weekend",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: double.infinity,
                          // height: 500,
                          child: Image.asset(
                            "assets/images/wal.jpg",
                            width: double.infinity,
                          )),
                    ),
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

class ItemsNames extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var arrItemsNames = [
      "Latest",
      "Exclusives",
      "Fashion",
      "Beauty",
      "lifestyle"
          "Accessories",
      "Jewelry and Watches",
      "Lingerie"
    ];
    return Container(
      height: 30,
      width: double.infinity,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Row(
            children: [
              InkWell(
                onTap: () {},
                child: Text(
                  arrItemsNames[index],
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                width: 20,
              )
            ],
          );
        },
        itemCount: arrItemsNames.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
