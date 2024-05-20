import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarouselSlid extends StatefulWidget {
  @override
  State<CarouselSlid> createState() => _CarouselSlidState();
}

class _CarouselSlidState extends State<CarouselSlid> {
  List imageList = [
    {"id": 1, "image_path": 'assets/images/newin.jpg'},
    {"id": 2, "image_path": 'assets/images/sale.jpg'},
    {"id": 3, "image_path": 'assets/images/brand.jpg'},
    {"id": 4, "image_path": 'assets/images/shoes.jpg'},
  ];

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          InkWell(
              onTap: () {
                print(currentIndex);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CarouselSlider(
                  items: imageList.map((item) {
                    return Container(
                      // color: Colors.amber,
                      child: Stack(
                        children: [
                          Container(
                            height: 270,
                            child: Image.asset(
                              item['image_path'],
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),
                          Positioned(
                              // top: 240,
                              bottom: 5,
                              left: 0,
                              right: 0,
                              child: Container(
                                // color: Colors.red.withAlpha(50),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: Text(
                                        "______",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 23,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 0),
                                          child: Text(
                                            'Modern',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 23,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Text(
                                          'Essentials',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 23,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text('    Discover new styles'),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: imageList
                                              .asMap()
                                              .entries
                                              .map((entry) {
                                            print(entry);
                                            print(entry.key);

                                            return GestureDetector(
                                              onTap: () => carouselController
                                                  .animateToPage(entry.key),
                                              child: Container(
                                                width: currentIndex == entry.key
                                                    ? 7
                                                    : 7,
                                                height: 7.0,
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 3.0),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: currentIndex ==
                                                            entry.key
                                                        ? Colors.red
                                                        : Colors.teal),
                                              ),
                                            );
                                          }).toList(),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: Text(
                                        '______',
                                        style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 77, 70, 70),
                                            fontSize: 23,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        ],
                      ),
                    );
                  }).toList(),
                  carouselController: carouselController,
                  options: CarouselOptions(
                    // scrollPhysics: const BouncingScrollPhysics(),
                    // autoPlay: true,
                    // aspectRatio: 1,
                    // height: 250,
                    // viewportFraction: 1,
                    height: 350.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
