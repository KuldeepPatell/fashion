import 'package:flutter/material.dart';

/*    Whenever use this class 

      showDialog(context: context, builder: (context) => PopUpScreen());

*/

class PopUpScreen extends StatelessWidget {
  PopUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 248, 201, 187),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/popup_image.jpeg',
            width: 300,
            height: 400,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Get the latest trends \n      for your style",
            style: TextStyle(
                fontSize: 21, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "We'll send you the latest fashion trends \n          every week to your inbox!",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 150,
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
              child: const Text('Sign me up!',
                  style: TextStyle(color: Colors.white)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'No thanks',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              )),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    ));
  }
}
