import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var arrSearchCategory = [
      "Winter Long Shirt",
      "Cotton Shorts",
      "Long Sleeve Top",
    ];
    return Scaffold(
      appBar: AppBar(
        // titleSpacing: 20,
        title: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text("Search", style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: IconButton(
            icon: Icon(Icons.close_outlined),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 30),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 30,
                  ),
                  hintText: 'Try  Jacket',
                  hintStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                  filled: false,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(
                      Icons.access_time,
                      color: Colors.grey,
                    ),
                    title: Text(
                      arrSearchCategory[index],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  );
                },
                itemCount: arrSearchCategory.length,
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 20,
                    thickness: 2,
                  );
                },
              ),
            ),
            Divider(
              height: 20,
              thickness: 1,
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
