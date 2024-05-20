import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final List<Map<String, String>> items;

  Cards({required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: .90),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              // margin: EdgeInsets.all(4),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    items[index]['imageURL']!,
                    width: 100,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 8),
                  Text(
                    items[index]['heading']!,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  Text(items[index]['description']!),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}





// import 'package:flutter/material.dart';

// class MyGridView extends StatelessWidget {
//   final List<Map<String, String>> items;

//   MyGridView({required this.items});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dynamic GridView Example'),
//       ),
//       body:
//        GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           crossAxisSpacing: 8,
//           mainAxisSpacing: 8,
//         ),
//         itemCount: items.length,
//         itemBuilder: (context, index) {
//           return Card(
//             margin: EdgeInsets.all(8),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Image.network(
//                   items[index]['imageURL']!,
//                   width: 100,
//                   height: 100,
//                   fit: BoxFit.cover,
//                 ),
//                 SizedBox(height: 8),
//                 Text(
//                   items[index]['heading']!,
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//                 Text(items[index]['description']!),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// void main() {
//   List<Map<String, String>> items = [
//     {
//       'imageURL': 'https://via.placeholder.com/150',
//       'heading': 'Holiday',
//       'description': 'Summer style',
//     },
//     {
//       'imageURL': 'https://via.placeholder.com/150',
//       'heading': 'Party look',
//       'description': 'New collection',
//     },
//     {
//       'imageURL': 'https://via.placeholder.com/150',
//       'heading': 'Summer look',
//       'description': 'New style',
//     },
//     {
//       'imageURL': 'https://via.placeholder.com/150',
//       'heading': 'Bikini t  ime',
//       'description': 'New collection',
//     },
//   ];

//   runApp(MaterialApp(
//     home: MyGridView(items: items),
//   ));
// }
