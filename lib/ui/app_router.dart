import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:express/constants/app_contstants.dart';
import 'package:express/data/model/post_sample.dart';
import 'package:express/ui/views/home_view_sample.dart';
import 'package:express/ui/views/login_view_sample.dart';
import 'package:express/ui/views/post_view_sample.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.Home:
        return MaterialPageRoute(builder: (_) => HomeViewSample());
      case RoutePaths.Login:
        return MaterialPageRoute(builder: (_) => LoginViewSample());
      case RoutePaths.Post:
        var post = settings.arguments as PostSample;
        return MaterialPageRoute(builder: (_) => PostViewSample(post: post));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
