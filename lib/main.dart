import 'package:express/ui/shared/app_colors.dart';
import 'package:express/ui/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:express/provider_setup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: ScreenUtilInit(
        designSize: Size(375, 812),
        splitScreenMode: true,
        builder: () => MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            // primaryColor: backgroundColorVarient,
            scaffoldBackgroundColor: backgroundColor,
            fontFamily: 'Montserrat',
            buttonTheme: ButtonThemeData(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0)),
              buttonColor: whiteColor,
            ),
            textTheme: TextTheme(

              headline1: GoogleFonts.poppins(
                  height: 1.h,
                  fontSize: 50.sp,
                  color: bodyText1TextColor,
                  fontWeight: FontWeight.w700),

              headline2: GoogleFonts.poppins(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: blackColor),

              headline3: GoogleFonts.poppins(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: blackColor),

              button: GoogleFonts.poppins(
                  fontSize: 18.5.sp,
                  fontWeight: FontWeight.w700,
                  color: buttonTextColor),

              caption: TextStyle(
                fontFamily: "poppins",
                overflow: TextOverflow.ellipsis,
                fontSize: 12.sp,
                fontWeight: FontWeight.w300,
                color: captionTextColor,
              ),

            ),
          ),
          home: SplashScreen(),
        ),
      ),
    );
  }
}
