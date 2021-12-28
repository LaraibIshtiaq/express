import 'package:express/ui/shared/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResturantMenuView extends StatelessWidget {
  const ResturantMenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            overflow: Overflow.visible,
            children: [
              Image(
                  width: 375.w,
                  height: 268.h,
                  fit: BoxFit.fitWidth,
                  image: const AssetImage(
                      "assets/images/resturant_menu_picture.png")),

              //Gradient Container Code
              Positioned(
                top: 0.h,
                child: Container(
                  height: 260.h,
                  width: 375.w,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Colors.black54.withOpacity(0.65),
                        Colors.black.withOpacity(0.0)
                      ],
                    ),
                  ),
                ),
              ),

              Positioned(
                top: 20.h,
                left: 10.w,
                child: FloatingActionButton(
                  backgroundColor: whiteColor,
                  foregroundColor: variantOfBlack,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child:
                      const Image(image: AssetImage("assets/icons/Path.png")),
                ),
              ),

              Positioned(
                top: 35.h,
                right: 60.w,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.r),
                        bottomLeft: Radius.circular(10.r)),
                    color: blueColor,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 2.h, horizontal: 8.w),
                    child: Text(
                      "Rs. 1880",
                      style: Theme.of(context)
                          .textTheme
                          .headline3!
                          .copyWith(color: whiteColor),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 20.h,
                right: 10.w,
                child: FloatingActionButton(
                  backgroundColor: blueColor,
                  foregroundColor: whiteColor,
                  onPressed: () {},
                  child: Image(image: AssetImage("assets/icons/cart_icon.png")),
                ),
              ),
              Positioned(
                top: 20.h,
                right: 10.w,
                child: Container(
                  decoration: BoxDecoration(
                    color: backgroundColorVarient,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Text(
                    " 2 ",
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: whiteColor),
                  ),
                ),
              ),
              Positioned(
                top: 235.h,
                left: 10.w,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 25.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 8.0,
                          spreadRadius: 0.0,
                          offset: Offset(0.0, 3.0),
                          color: shadowColor)
                    ],
                    borderRadius: BorderRadius.circular(40.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sarang Resturant",
                        style: Theme.of(context)
                            .textTheme
                            .headline2!
                            .copyWith(color: blueColor),
                      ),
                      Text(
                        "Pakistani",
                        style: Theme.of(context)
                            .textTheme
                            .headline3!
                            .copyWith(color: blueColor),
                      ),
                    ],
                  ),
                ),
              ),



              Container(
                height: 20.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return Text(
                      "Karahi",
                      style:
                          Theme.of(context).textTheme.headline3,
                    );
                  },
                  separatorBuilder:
                      (BuildContext context, int index) {
                    return SizedBox(
                      width: 8.w,
                    );
                  },
                ),
              ),

              //MENU DISHES LIST
              // ListView.separated(
              //   key: Key("KeyForScroll"),
              //   scrollDirection: Axis.vertical,
              //   itemCount: 15,
              //   shrinkWrap: true,
              //   itemBuilder: (context, index) {
              //     return Card(
              //         shadowColor: shadowColor,
              //
              //         ///Todo Apply Theme
              //         shape: RoundedRectangleBorder(
              //             borderRadius:
              //                 BorderRadius.circular(13.r)),
              //         elevation: 1,
              //         child: Column(
              //           children: [
              //             Container(
              //               padding: EdgeInsets.symmetric(
              //                   vertical: 20.h,
              //                   horizontal: 20.w),
              //               color: whiteColor,
              //               child: Row(
              //                 mainAxisAlignment:
              //                     MainAxisAlignment
              //                         .spaceBetween,
              //                 children: [
              //                   Column(
              //                     crossAxisAlignment:
              //                         CrossAxisAlignment.start,
              //                     children: [
              //                       Text(
              //                         "Chicken Leg Tikka",
              //                         style: Theme.of(context)
              //                             .textTheme
              //                             .headline2,
              //                       ),
              //                       Text(
              //                         "Rs. 400",
              //                         style: Theme.of(context)
              //                             .textTheme
              //                             .headline3,
              //                       ),
              //                       Text(
              //                         "Serves 1",
              //                         style: Theme.of(context)
              //                             .textTheme
              //                             .headline3!
              //                             .copyWith(
              //                                 color:
              //                                     shadowColor),
              //                       ),
              //                     ],
              //                   ),
              //                   TextButton(
              //                     onPressed: () {},
              //                     child: Padding(
              //                       padding:
              //                           EdgeInsets.symmetric(
              //                               horizontal: 12.w),
              //                       child: Text(
              //                         "ADD",
              //                         style: Theme.of(context)
              //                             .textTheme
              //                             .button!
              //                             .copyWith(
              //                                 color: blueColor),
              //                       ),
              //                     ),
              //                     style: ButtonStyle(
              //                         backgroundColor:
              //                             MaterialStateProperty
              //                                 .all(whiteColor),
              //                         shape: MaterialStateProperty.all<
              //                                 RoundedRectangleBorder>(
              //                             RoundedRectangleBorder(
              //                                 borderRadius:
              //                                     BorderRadius
              //                                         .circular(
              //                                             50.r),
              //                                 side: BorderSide(
              //                                     color:
              //                                         blueColor)))),
              //                   )
              //                 ],
              //               ),
              //             )
              //           ],
              //         ));
              //   },
              //   separatorBuilder:
              //       (BuildContext context, int index) =>
              //           Container(
              //     color: bottomSheetColor,
              //     height: 2.h,
              //   ),
              //   //Divider(color: whiteColor, thickness: 20.h,),
              // ),
            ],
          )),
    );
  }
}
