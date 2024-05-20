import 'package:flutter/material.dart';

class WishlistItemsShow extends StatelessWidget {
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
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
              ),
              Container(
                height: 150,
                width: 150,
                child: Image.asset(
                  'assets/images/shopp.jpg',
                  height: 150,
                  width: 150,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "No Favourite",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                " items yet.",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Text(
                  "Add your favouritr products and easly ",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Text(
                  "browser them here",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ),
            ],
          ),
        ));
  }
}
