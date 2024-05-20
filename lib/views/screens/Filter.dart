import 'package:fashion/modal/btn/rounded_btn.dart';
import 'package:fashion/views/screens/Category.dart';
import 'package:fashion/views/screens/womensTop.dart';
import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var arrNames = ["Category", "Brand", "Range", "Price", "Size", "Color"];
    var trailing = ['All', 'All', 'All', "20-200", 'All', 'All'];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Filter",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.close_outlined),
          onPressed: () {
            Navigator.pop(context);
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => WomensTop()),
            // );
          },
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Reset",
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 400,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      // Perform navigation when item is tapped
                      if (index == 0) {
                        // Navigate to the category page
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Category()),
                        );
                      }
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        ListTile(
                          title: Text(
                            '${arrNames[index]}',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Text(trailing[index]),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: ((context, index) {
                  return Divider(
                    height: 20,
                    thickness: 1,
                  );
                }),
                itemCount: arrNames.length,
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 220),
              child: Container(
                width: double.infinity,
                height: 50,
                // color: Colors.red,
                child: RoundedButton(
                  btnName: "Apply",
                  callback: () {},
                  textStyle: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}




// import 'package:fashion/modal/btn/rounded_btn.dart';
// import 'package:flutter/material.dart';

// class Filter extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var arrNames = ["Category", "Brand", "Range", "Price", "Size", "Color"];
//     var trailing = ['All', 'All', 'All', "20-200", 'All', 'All'];
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Filter",
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//         leading: IconButton(
//           icon: Icon(Icons.close_outlined),
//           onPressed: () {},
//         ),
//         centerTitle: true,
//         actions: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               "Reset",
//               style: TextStyle(fontSize: 18),
//             ),
//           )
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               width: double.infinity,
//               height: 400,
//               child: ListView.separated(
//                   itemBuilder: (context, index) {
//                     return Column(
//                       children: [
//                         SizedBox(
//                           height: 10,
//                         ),
//                         ListTile(
//                           title: Text(
//                             '${arrNames[index]}',
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           trailing: Text(trailing[index]),
//                         ),
//                       ],
//                     );
//                   },
//                   separatorBuilder: ((context, index) {
//                     return Divider(
//                       height: 20,
//                       thickness: 1,
//                     );
//                   }),
//                   itemCount: arrNames.length),
//             ),
//             SizedBox(
//               height: 150,
//             ),

//             Padding(
//               padding: const EdgeInsets.only(left: 10, right: 10, top: 220),
//               child: Container(
//                 width: double.infinity,
//                 height: 50,
//                 // color: Colors.red,
//                 child: RoundedButton(
//                   btnName: "Apply",
//                   callback: () {},
//                   textStyle: TextStyle(color: Colors.white),
//                 ),
//               ),
//             )
//             // Padding(
//             //   padding: const EdgeInsets.all(15),
//             //   child: Container(
//             //       alignment: Alignment.bottomCenter,
//             //       color: Colors.black87,
//             //       width: double.infinity,
//             //       child: ElevatedButton(
//             //           style: ElevatedButton.styleFrom(
//             //               backgroundColor: Colors.transparent),
//             //           onPressed: () {},
//             //           child: Text(
//             //             "Apply",
//             //             style: TextStyle(color: Colors.white),
//             //           ))),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }
