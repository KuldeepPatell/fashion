import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageSlider extends StatefulWidget {
  final List<dynamic> imageLists;
  ImageSlider({required this.imageLists});
  @override
  State<ImageSlider> createState() => _ImageSlider();
}

class _ImageSlider extends State<ImageSlider> {
  final CarouselController imageSlider = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            // print(currentIndex);
          },
          child: SizedBox(
            width: double.infinity,
            child: CarouselSlider(
                items: widget.imageLists
                    .map(
                      (dynamic item) => Image.asset(
                        item['image_path'],
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    )
                    .toList(),
                carouselController: imageSlider,
                options: CarouselOptions(
                    scrollPhysics: BouncingScrollPhysics(),
                    autoPlay: true,
                    aspectRatio: .5,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    })),
          ),
        ),
        Positioned(
          top: 380.h,
          left: 0.w,
          right: 0.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.imageLists.asMap().entries.map((entry) {
              print(entry);
              print(entry.key);
              return GestureDetector(
                onTap: () => imageSlider.animateToPage(entry.key),
                child: Container(
                  width: currentIndex == entry.key ? 9 : 7,
                  height: 7.0.h,
                  margin: EdgeInsets.symmetric(horizontal: 5.0.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: currentIndex == entry.key
                          ? const Color.fromARGB(255, 105, 105, 105)
                          : Colors.white),
                ),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
