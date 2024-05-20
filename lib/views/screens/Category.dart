import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    var arrNames = [
      "Clothing",
      "Shoes",
      "Bags",
      "Accessories",
      "Jewellery and Watches",
      "Lingene",
      "Beauty"
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Category"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Center(
            child: Image.asset(
          'assets/images/cloth_image.jpg',
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        )),
        Container(
          width: double.infinity,
          height: 600,
          child: ListView.separated(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      title: Text(
                        '${arrNames[index]}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: ((context, index) {
                return Divider(
                  height: 20,
                  thickness: 1,
                );
              }),
              itemCount: arrNames.length),
        ),
      ])),
    );
  }
}
