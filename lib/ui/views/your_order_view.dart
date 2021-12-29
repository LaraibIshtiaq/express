import 'package:express/ui/shared/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class YourOrderView extends StatelessWidget {
  const YourOrderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          overflow: Overflow.visible,
          children:[
            //BOTTOM SHEET
            Positioned(
              top: 94.h,
              child: Container(
              height: 653.h,
              width: 375.w,
              decoration: BoxDecoration(
                color: bottomSheetColor,
                borderRadius: BorderRadius.only(topRight: Radius.circular(15.r),topLeft: Radius.circular(15.r) )
              ),
                // child: Text(""),
              ),
            ),

            Positioned(
              top: 120.h,
              right: 17.5.w,
              child: Container(
                width: 340.w,
                padding: EdgeInsets.all(8.h),
                color: whiteColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 20.h,),
                          color: whiteColor,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  TextButton.icon(onPressed: (){}, icon: Icon(Icons.clear), label: Text("")),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Chicken Leg Tikka",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2,
                                      ),
                                      Text(
                                        "Rs. 400",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2!.copyWith(fontWeight: FontWeight.w200),
                                      ),
                                      Text(
                                        "Serves 1",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2!
                                            .copyWith(color: shadowColor, fontWeight: FontWeight.w200),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  //BUTTON
                                  Container(
                                    decoration: BoxDecoration(
                                      color: blueColor,
                                      borderRadius: BorderRadius.circular(30.r)
                                    ),
                                    child: Row(
                                      children: [
                                        //ADD BUTTON
                                        GestureDetector(onTap: (){}, child: Icon(Icons.add, color: whiteColor, size: 28.h,),),
                                        //TEXT FIELD NUMBER
                                        Container(
                                          color: whiteColor,
                                          width:30.w,
                                            height: 26.h,
                                            child:TextField(
                                              style: Theme.of(context).textTheme.headline2!.copyWith(color: blueColor,),
                                            textAlign: TextAlign.center,
                                            textAlignVertical: TextAlignVertical.bottom,
                                            keyboardType: TextInputType.number,
                                            ),
                                        ),
                                        //MINUS BUTTON
                                        GestureDetector(onTap: (){}, child: Icon(Icons.remove, color: whiteColor,size: 28.h),),
                                      ],
                                    ),
                                  ),
                                  Text("Rs. 380", style: Theme.of(context).textTheme.headline2!.copyWith(color: backgroundColor),),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) => Container(color: bottomSheetColor, height: 2.h,),
                    ),
                    TextButton(onPressed: () {  }, child: Text("Add Items +", style: Theme.of(context).textTheme.headline3!.copyWith(color: backgroundColor),),),

                  ],
                ),
              ),
            ),

            //ITEM COUNT AND PRICE LABEL
            Positioned(
              top: 70.h,
              right: 17.5.w,
              child: Container(
                height: 60.h,
                width: 340.w,
                decoration: BoxDecoration(
                    color: blueColor,
                    borderRadius: BorderRadius.circular(15.r,)
                ),
                child: Center(
                  child: Text(
                    " 6 Items / Total Cost Rs. 1880 ", style: Theme.of(context).textTheme.headline2!.copyWith(color: whiteColor),
                  ),
                ),
              ),
            ),

          ]
        ),
    ),);
  }
}
