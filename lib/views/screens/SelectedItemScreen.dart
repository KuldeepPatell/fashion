import 'package:fashion/modal/carouselSlider/imageSlider.dart';
import 'package:fashion/modal/rowCarts/rowCarts.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectedItemScreen extends StatefulWidget {
  SelectedItemScreen({super.key});
  @override
  State<SelectedItemScreen> createState() => _SelectedItemScreen();
}

class _SelectedItemScreen extends State<SelectedItemScreen> {
  final List imageList = [
    {"id": 1, "image_path": 'assets/images/slider1_image.webp'},
    {"id": 2, "image_path": 'assets/images/slider2_image.webp'},
    {"id": 3, "image_path": 'assets/images/slider3_image.webp'},
    {"id": 4, "image_path": 'assets/images/slider2_image.webp'},
  ];
  String color = 'Khaki';
  var _size = 0.4;

  final List<CartItem> cartItems = [
    CartItem(
        image: 'assets/images/sht.jpg',
        name: 'Forever18',
        description: 'Short Sleeve Top',
        price: 50.00,
        icons: Icons.favorite_outline_sharp),
    CartItem(
      image: 'assets/images/sht2.jpg',
      name: 'Jean Short',
      description: 'Leather Jacket',
      price: 80.00,
      icons: Icons.favorite_border,
    ),
    CartItem(
      image: 'assets/images/sht1.jpg',
      name: 'Forever18',
      description: 'Short White Tee',
      price: 50.00,
      icons: Icons.favorite_border,
    ),
    CartItem(
      image: 'assets/images/sofa.jpg',
      name: 'Fashion Label',
      description: 'Long Dress ',
      price: 70.00,
      icons: Icons.favorite_border,
    ),
  ];

  var arrImage = [
    'assets/images/long.jpg',
    'assets/images/jack.jpg',
  ];
  var arrItem = ['Long Sleeve Top', 'White Shirt'];
  var arrItemPrize = ['\$50.00', '\$50.00'];
  var arrsubtitle = ['Subtitle goes here', 'Size S'];
  var arrItemCount = [1, 1];
  bottomSheet() {
    return SingleChildScrollView(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'My Cart',
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "${arrImage.length} items ",
                      style: TextStyle(fontSize: 15.sp),
                    ),
                  ],
                ),
              ),
              Divider(),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: double.infinity,
                height: 175.h,
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemBuilder: ((context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 70.h,
                              width: 70.w,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    arrImage[index],
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  arrItem[index],
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  arrItemPrize[index],
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                  ),
                                ),
                                Text(
                                  arrsubtitle[index],
                                  style: TextStyle(
                                      fontSize: 13.sp, color: Colors.grey),
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.remove,
                                  size: 16.5.sp,
                                )),
                            Text(
                              '${arrItemCount[index]}',
                              style: TextStyle(
                                  fontSize: 16.5.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.add,
                                  size: 16.5.sp,
                                ))
                          ],
                        ),
                      ],
                    );
                  }),
                  itemCount: arrImage.length,
                  separatorBuilder: (context, index) {
                    return Divider(
                      height: 30.h,
                    );
                  },
                ),
              ),
              Divider(
                thickness: 2,
                color: Colors.black,
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Total amount',
                        style: TextStyle(fontSize: 16.sp, color: Colors.grey),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '\$100',
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 35.h,
              ),
              SizedBox(
                width: double.infinity,
                height: 45.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 54, 70, 62),
                      shape: BeveledRectangleBorder(),
                      shadowColor: Colors.black,
                      elevation: 10),
                  onPressed: () {},
                  child: Text('Check out',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget makeDismissible({required Widget child}) => GestureDetector(
  //       behavior: HitTestBehavior.opaque,
  //       onTap: () => setState(() {
  //         _size = 0.4;
  //       }),
  //       child: child,
  //     );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
            child: Container(
              padding: EdgeInsets.only(top: 5.h),
              height: 75.h,
              color: Colors.blueGrey,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Add to bag ",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 20.sp),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 2.h),
                        child: IconButton(
                          icon: Icon(
                            Icons.add_sharp,
                            color: Colors.white,
                            size: 20.sp,
                          ),
                          onPressed: () {
                            setState(() {
                              _size = 0.4;
                            });

                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return bottomSheet();
                              },
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )),
        body: Stack(children: [
          Stack(children: [
            ImageSlider(imageLists: imageList),
            Positioned(
                top: 15.h,
                left: 10.w,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    size: 25.sp,
                    color: Colors.white,
                  ),
                )),
            Positioned(
                top: 15.h,
                right: 10.w,
                // left: 50,
                child: IconButton(
                  icon: Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.white,
                    size: 25.sp,
                  ),
                  onPressed: () {},
                )),
          ]),
          //  makeDismissible(
          // makeDismissible(

          DraggableScrollableSheet(
              initialChildSize: _size,
              minChildSize: 0.4,
              maxChildSize: 0.9,
              snapSizes: [0.4, 0.9],
              snap: true,
              builder: (_, controller) => ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      child: ListView(controller: controller, children: [
                        Column(children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _size = _size == 0.4 ? 0.9 : 0.4;
                              });
                            },
                            child: Container(
                              height: 30.h,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Elegant Long Sleeve\nSwing Top",
                                style: TextStyle(
                                    fontSize: 25.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                              Column(children: [
                                InkWell(
                                  child: Icon(
                                    Icons.share_outlined,
                                    size: 25.sp,
                                  ),
                                  onTap: () {},
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                InkWell(
                                  child: Icon(
                                    Icons.favorite_border,
                                    size: 25.sp,
                                  ),
                                  onTap: () {},
                                ),
                              ]),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              Text(
                                '\$288.00',
                                style: TextStyle(
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Color: ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black54,
                                        fontSize: 15.sp),
                                  ),
                                  Text(
                                    ' $color',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.sp),
                                  ),
                                ],
                              ),
                              Container(
                                width: 160.w,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      child: Icon(
                                        Icons.circle,
                                        size: 25.sp,
                                        color: Colors.grey,
                                      ),
                                      onTap: () {
                                        setState(() {
                                          color = 'Grey';
                                        });
                                      },
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    InkWell(
                                      child: Icon(
                                        Icons.circle,
                                        color:
                                            Color.fromARGB(255, 163, 184, 194),
                                        size: 25.sp,
                                      ),
                                      onTap: () {
                                        setState(() {
                                          color = 'Blue';
                                        });
                                      },
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    InkWell(
                                      child: Icon(
                                        Icons.circle,
                                        color:
                                            Color.fromARGB(255, 204, 187, 126),
                                        size: 25.sp,
                                      ),
                                      onTap: () {
                                        setState(() {
                                          color = 'Khaki';
                                        });
                                      },
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    InkWell(
                                      child: Icon(
                                        Icons.circle,
                                        color:
                                            Color.fromARGB(255, 141, 91, 107),
                                        size: 25.sp,
                                      ),
                                      onTap: () {
                                        setState(() {
                                          color = 'Pink';
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            children: [
                              Text(
                                "This is a beautiful women Swing Top for your ",
                                style: TextStyle(fontSize: 14.sp),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "daily look,it is elegance meets...",
                                style: TextStyle(fontSize: 14.sp),
                              ),
                              InkWell(
                                child: Text(
                                  'More',
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                onTap: () {},
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Divider(),
                          SizedBox(
                            height: 5.h,
                          ),
                          InkWell(
                            child: Row(
                              children: [
                                Text(
                                  "Shiping and returns",
                                  style: TextStyle(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            onTap: () {},
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Divider(),
                          SizedBox(
                            height: 5.h,
                          ),
                          InkWell(
                            child: Row(
                              children: [
                                Text(
                                  "Details and care",
                                  style: TextStyle(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            onTap: () {},
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Divider(),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "You might also like",
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "12 items",
                                style: TextStyle(
                                  fontSize: 13.sp,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Container(
                            width: double.infinity,
                            height: 320.h,
                            color: Colors.amber,
                            child: RowCarts(cartItems: cartItems),
                          ),
                        ]),
                      ]),
                    ),
                  )),
          // )
        ]));
  }
}
