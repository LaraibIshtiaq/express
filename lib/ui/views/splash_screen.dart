import 'package:express/ui/shared/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:express/ui/views/resturant_list_view.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(overflow: Overflow.visible, children: [
          //Pictures Stack
          Positioned(
            bottom: 25.h,
            right: 0.h,
            left: 0.h,
            child: Row(
              children: [
                Stack(
                  children: [
                    Positioned(
                      bottom: -20.h,
                      right: 0.w,
                      child: Image(
                          height: 376.26.h,
                          width: 215.58.w,
                          fit: BoxFit.contain,
                          image: AssetImage("assets/images/splash_boy_face.png")),
                    ),
                    Positioned(
                      left: -50.w,
                      child: Image(
                          height: 401.95.h,
                          width: 331.38.w,
                          fit: BoxFit.fitHeight,
                          image:
                          AssetImage("assets/images/splash_girl_face.png")),
                    ),
                    Container(
                      height: 410.h,
                      width: 375.w,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.center,
                          colors: <Color>[
                            // Colors.black54.withOpacity(1),
                            // Colors.white.withOpacity(0.0),
                            backgroundColorVarient.withOpacity(1),
                            backgroundColor.withOpacity(0.0)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),

          //Gradient Container Code
          Container(
            height: 812.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.center/2,
                colors: <Color>[
                  backgroundColorVarient.withOpacity(1),
                  backgroundColor.withOpacity(0.0)
                ],
              ),
            ),
          ),

          //Logo and Text
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 50.h),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //APP LOGO
                    CircleAvatar(
                      radius: (107.34.w / 2).r,
                      backgroundColor: whiteColor,
                      foregroundImage:
                      const AssetImage("assets/images/teo_express.png"),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      "Service for Everyone",
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ],
                ),
                Spacer(),
                //SIGN IN BUTTON
                Align(
                  alignment: Alignment.bottomCenter,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) =>  ResturantListView()));
                    },

                    ///Todo: Uncomment this Button Functionality for Login
                    // async {
                    //   var result = await FlutterWebAuth.authenticate(
                    //       url:
                    //           "https://staging-tossauth.teo-intl.com/connect/authorize?client_id=1CB07952-B8EC-4433-9CC0-BD062F2F519A&scope=TOSSAPI%20offline_access&response_type=code&redirect_uri=oauth%3A%2F%2Ftoss&nonce=81387052-6182-486a-9e75-b9b9985a4d63",
                    //       callbackUrlScheme: "oauth");
                    //   String? code = Uri.parse(result).queryParameters['code'];
                    //   Map<String, dynamic> jsonMap = {
                    //     'client_id': '1CB07952-B8EC-4433-9CC0-BD062F2F519A',
                    //     "client_secret": "TOSS_Android_App_Secret",
                    //     "grant_type": "authorization_code",
                    //     "scope": "openid profile TOSSAPI offline_access",
                    //     "redirect_uri": "oauth://toss",
                    //     "code": code
                    //   };
                    //   final res = await http.post(
                    //     Uri.parse(
                    //         "https://staging-tossauth.teo-intl.com/Connect/token"),
                    //     headers: <String, String>{
                    //       "Content-Type": "application/x-www-form-urlencoded"
                    //     },
                    //     body: jsonMap,
                    //   );
                    //   if (res.statusCode == 200) {
                    //     code = jsonDecode(res.body)['access_token'];
                    //     Map<String, dynamic> patload = Jwt.parseJwt(code!);
                    //     print("Name: " +
                    //         patload['name'] +
                    //         '\n' +
                    //         "Designation: " +
                    //         patload['empDesignation'] +
                    //         "\nEmail:" +
                    //         patload['email']);
                    //   } else {
                    //     print("Error");
                    //   }
                    // },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(whiteColor),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.r),
                                side: BorderSide(color: whiteColor)))),


                    child: Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                              height: 32.h,
                              width: 26.69.w,
                              image: AssetImage("assets/images/office_icon.png")),
                          SizedBox(width: 15.w),
                          Text('Sign in with office 365',
                              style: Theme.of(context).textTheme.button),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}