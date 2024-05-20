import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ReusableCarousel extends StatefulWidget {
  final List<dynamic> imageList;

  ReusableCarousel({required this.imageList});

  @override
  _ReusableCarouselState createState() => _ReusableCarouselState();
}

class _ReusableCarouselState extends State<ReusableCarousel> {
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: InkWell(
        onTap: () {
          print(currentIndex);
        },
        child: CarouselSlider(
          items: widget.imageList.map((dynamic item) {
            final imagePath = item is Map<String, dynamic>
                ? item['image_path'] as String
                : '';
            return Container(
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    left: 300,
                    right: 0,
                    child: Container(
                      // padding: EdgeInsets.symmetric(vertical: 10),
                      // color: Colors.black.withOpacity(0.5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: widget.imageList
                                    .asMap()
                                    .entries
                                    .map((entry) {
                                  return GestureDetector(
                                    onTap: () => carouselController
                                        .animateToPage(entry.key),
                                    child: Container(
                                      width: currentIndex == entry.key ? 7 : 7,
                                      height: 7.0,
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 3.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: currentIndex == entry.key
                                            ? Colors.white
                                            : Colors.teal,
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
          carouselController: carouselController,
          options: CarouselOptions(
            height: double.infinity,
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
      ),
    );
  }
}
