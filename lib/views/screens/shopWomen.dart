import 'package:fashion/modal/colCarts/colCarts.dart';
import 'package:fashion/views/bashboard/bashboard.dart';
import 'package:fashion/views/screens/womensTop.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopWomen extends StatefulWidget {
  @override
  State<ShopWomen> createState() => _ShopWomenState();
}

class _ShopWomenState extends State<ShopWomen> {
  @override
  Widget build(BuildContext context) {
    var arrShopItem = [
      "New in",
      "Clothing",
      "Bags",
      "Shoes",
      "Accessories",
      "Jewelry and Watches",
      "Aman",
      "Rohit",
      "Akash",
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
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: false,
      //   title: Text(
      //     "Filters",
      //     textAlign: TextAlign.right,
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WomensTop(),
                            ));
                      },
                      child: Text(
                        'Filters',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Shop Women',
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                height: 3,
                color: Colors.black,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 30,
                width: double.infinity,
                // color: Colors.amber,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Text(
                            arrShopItem[index],
                            style: TextStyle(
                                fontSize: 21, fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    );
                  },
                  itemCount: arrShopItem.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  width: double.infinity,
                  height: double.maxFinite,
                  // color: Colors.amber,
                  child: ColCarts(cartItems: cartItems),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
