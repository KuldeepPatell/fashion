import 'package:fashion/modal/btn/rounded_btn.dart';
import 'package:fashion/views/screens/Shipping.dart';
import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  var arrImage = [
    'assets/images/jeans.jpg',
    'assets/images/long.jpg',
  ];

  var arrItem = ['Long Sleeve Top', 'White Shirt'];

  var arrItemPrize = ['\$50.00', '\$50.00'];

  var arrsubtitle = ['Subtitle goes here', 'Size S'];

  var arrItemCount = [1, 1];

  List<String> country = <String>[
    'standard(3-7buisness days)',
  ];

  String dropdownCountry = 'standard(3-7buisness days)';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Check out"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: 210,
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(arrImage[index])),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  arrItem[index],
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  arrItemPrize[index],
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  arrsubtitle[index],
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'x${arrItemCount[index]}',
                              style: TextStyle(
                                  fontSize: 16.5, fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                }),
                itemCount: arrImage.length,
                separatorBuilder: (context, index) {
                  return Divider();
                },
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Subtotal",
                  style: TextStyle(fontSize: 17, color: Colors.grey),
                ),
                Text(
                  "\$100.00",
                  style: TextStyle(fontSize: 17, color: Colors.grey),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Estimated tax",
                  style: TextStyle(fontSize: 17, color: Colors.grey),
                ),
                Text(
                  "\$2.43",
                  style: TextStyle(fontSize: 17, color: Colors.grey),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Shipping",
                  style: TextStyle(fontSize: 17, color: Colors.grey),
                ),
                Text(
                  "\$0.00",
                  style: TextStyle(fontSize: 17, color: Colors.grey),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 3,
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total amount",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "\$102.40",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Text(
                  "Shipping method",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            DropdownButton<String>(
              value: dropdownCountry,
              icon: const Icon(Icons.keyboard_arrow_down_outlined),
              elevation: 16,
              isExpanded: true,
              style: const TextStyle(color: Colors.grey, fontSize: 18),
              underline: Container(
                height: 2,
                color: Colors.grey,
              ),
              onChanged: (String? value) {
                // This is called when the user selects an item.
                setState(() {
                  dropdownCountry = value!;
                });
              },
              items: country.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: double.infinity,
                child: RoundedButton(
                  btnName: 'Place Order',
                  callback: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Shipping()),
                    );
                  },
                  textStyle: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
