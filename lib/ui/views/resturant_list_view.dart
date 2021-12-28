import 'package:express/ui/shared/app_colors.dart';
import 'package:express/ui/views/resturant_menu_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class ResturantListView extends StatelessWidget {
  ResturantListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(
              fit: StackFit.loose,
              children :[
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      SizedBox(height: 50.h,),
                      //SEARCH BAR
                      // Padding(
                      //   padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h),
                      //   child: Row(children: [
                      //     //Back Arrow
                      //     IconButton(
                      //       onPressed: () {
                      //         Navigator.pop(context);
                      //       },
                      //       icon: Icon(
                      //         Icons.arrow_back_ios,
                      //         color: Colors.white,
                      //         size: 24.75.h,
                      //       ),
                      //     ),
                      //     Text("TEO Express", style: GoogleFonts.poppins(fontSize: 24.0, fontWeight: FontWeight.w800, color: Colors.white),),
                      //     // AnimSearchBar(
                      //     //   // rtl: true,
                      //     //     width: 200,
                      //     //     textController: textController,
                      //     //     onSuffixTap: () {}),
                      //
                      //     //
                      //     // //SEARCH BAR
                      //     // SizedBox(
                      //     //   width: 290.w,
                      //     //  // height: 49.h,
                      //     //   child: PaginatedSearchBar<ExampleItem>(
                      //     //     maxHeight: 49.h,
                      //     //     hintText: 'Search',
                      //     //     emptyBuilder: (context) {
                      //     //       return const Text("I'm an empty state!");
                      //     //     },
                      //     //     paginationDelegate: EndlessPaginationDelegate(
                      //     //       pageSize: 20,
                      //     //       maxPages: 3,
                      //     //     ),
                      //     //     onSearch: ({
                      //     //       required pageIndex,
                      //     //       required pageSize,
                      //     //       required searchQuery,
                      //     //     }) async {
                      //     //       return Future.delayed(
                      //     //           const Duration(milliseconds: 1300), () {
                      //     //         if (searchQuery == "empty") {
                      //     //           return [];
                      //     //         }
                      //     //
                      //     //         if (pageIndex == 0) {
                      //     //           pager = ExampleItemPager();
                      //     //         }
                      //     //
                      //     //         return pager.nextBatch();
                      //     //       });
                      //     //     },
                      //     //     itemBuilder: (
                      //     //       context, {
                      //     //       required item,
                      //     //       required index,
                      //     //     }) {
                      //     //       return Text(item.title);
                      //     //     },
                      //     //   ),
                      //     // ),
                      //   ]),
                      // ),
                      //CATEGORIES BUTTON TABS
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                        child: Container(
                          height: 42.h,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                    backgroundColor:
                                    MaterialStateProperty.all(backgroundColor),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(50.r),
                                            side: BorderSide(color:whiteColor)))),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.w,),
                                  child: Text("Button 1",
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context).textTheme.button!.copyWith(color: Colors.white, fontSize: 14.sp, fontWeight: FontWeight.w300)),
                                ),
                              );
                            },
                            separatorBuilder: (BuildContext context, int index) {
                              return SizedBox(
                                width: 8.w,
                              );
                            },
                          ),
                        ),
                      ),

                      //BOTTOM CARD
                      Flexible(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 13.w),
                          decoration: BoxDecoration(
                              color: bottomSheetColor,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(27.1845.r),
                                  topLeft: Radius.circular(27.1845.r))),
                          child: ListView.separated(
                            scrollDirection: Axis.vertical,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: (){
                                  print("Tapped on CARD ");
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context) =>  ResturantMenuView()));
                                },
                                child: Card(
                                    shadowColor: shadowColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(13.r)),
                                    elevation: 1,
                                    child: Column(
                                      children: [
                                        Image(
                                          fit: BoxFit.fitWidth,
                                          image: AssetImage(
                                              "assets/images/sarang_picture.png"),
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 20.h, horizontal: 13.w),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(13.r),
                                            color: whiteColor,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Sarang Resturant",
                                                style:Theme.of(context).textTheme.headline2,
                                              ),
                                              Text(
                                                "Pakistani",
                                                style: Theme.of(context).textTheme.headline3,
                                              ),
                                              Divider(),
                                              Text(
                                                "BBQ, Mash daal, Chicken Karahi, Qorma, Vegitable uhhasf ahsjkashda ashdkjahdasd ...",
                                                style: Theme.of(context).textTheme.caption,
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    )),
                              );
                            },
                            separatorBuilder: (BuildContext context, int index) =>
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.w),
                              child: Container(
                                color: bottomSheetColor, height: 20.h,),
                            ),
                            //Divider(color: whiteColor, thickness: 20.h,),
                          ),
                        ),
                      ),


                    ],
                  ),
                ),
                SizedBox(
                  height: 812.h/2,
                  child: buildFloatingSearchBar(context),),
              ]
              ,
            )));
  }

  Widget buildFloatingSearchBar(BuildContext context) {
    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return FloatingSearchBar(
      hint: 'Search...',
      scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
      transitionDuration: const Duration(milliseconds: 800),
      transitionCurve: Curves.easeInOut,
      physics: const BouncingScrollPhysics(),
      axisAlignment: isPortrait ? 0.0 : -1.0,
      openAxisAlignment: 0.0,
      width: isPortrait ? 600 : 500,
      debounceDelay: const Duration(milliseconds: 500),
      onQueryChanged: (query) {
        // Call your model, bloc, controller here.
      },
      // Specify a custom transition to be used for
      // animating between opened and closed stated.
      transition: CircularFloatingSearchBarTransition(),
      actions: [
        // FloatingSearchBarAction(
        //   showIfOpened: false,
        //   child: CircularButton(
        //     icon: const Icon(Icons.place),
        //     onPressed: () {},
        //   ),
        // ),
        FloatingSearchBarAction.searchToClear(
          showIfClosed: false,
        ),
      ],
      builder: (context, transition) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Material(
            color: whiteColor,
            elevation: 4.0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: Colors.accents.map((color) {
                return Container(height: 112, color: color);
              }).toList(),
            ),
          ),
        );
      },
    );
  }


}