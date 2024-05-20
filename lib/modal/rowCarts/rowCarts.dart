import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItem {
  final String image;
  final String name;
  final String description;
  final double price;
  final IconData icons;

  CartItem({
    required this.image,
    required this.name,
    required this.description,
    required this.price,
    required this.icons,
  });
}

class RowCarts extends StatelessWidget {
  final List<CartItem> cartItems;
// var ax= Axis.horizontal;
  RowCarts({required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //     // title: Text('Cart Items'),
        //     ),
        body: Container(
          height: 300, // Adjust height as needed
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cartItems.length,
            itemBuilder: (BuildContext context, int index) {
              final item = cartItems[index];
              return Container(
                width: 160, // Adjust width as needed
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(0),
                        child: Image.asset(
                          item.image,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      item.name,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      item.description,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$${item.price.toString()}',
                          style: TextStyle(color: Colors.green),
                        ),
                        Icon(item.icons)
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
