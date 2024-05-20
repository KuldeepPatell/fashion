import 'package:fashion/modal/rowCarts/rowCarts.dart';
import 'package:fashion/views/screens/Productview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopTheLook extends StatelessWidget {
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
      appBar: AppBar(
        title: Text(
          "Shop the look",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/sofa.jpg"),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductView(
                                  imageUrl: '',
                                ),
                              ));
                        },
                        child: Text(
                          '  Kelly Wong    ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        ". Follow",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.favorite_outline_sharp,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                width: double.infinity,
                // height: 500,
                child: Image.asset(
                  "assets/images/sofa2.jpg",
                  width: double.infinity,
                )),
            Container(
              padding: EdgeInsets.only(top: 10, left: 20, bottom: 10),
              child: Text(
                "Products in this look",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              color: Colors.red,
              width: double.infinity,
              height: 320,
              child: RowCarts(cartItems: cartItems),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/sofa.jpg"),
                      ),
                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => ProductView(),
                          //     ));
                        },
                        child: Text(
                          '  Kelly Wong    ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        ". Follow",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.favorite_outline_sharp,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                width: double.infinity,
                // height: 500,
                child: Image.asset(
                  "assets/images/sofa2.jpg",
                  width: double.infinity,
                )),
          ],
        ),
      ),
    );
  }
}
