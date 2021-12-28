import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:express/data/model/user_sample.dart';
import 'package:express/ui/shared/app_colors.dart';
import 'package:express/ui/shared/text_styles.dart';
import 'package:express/ui/shared/ui_helpers.dart';
import 'package:express/ui/widgets/posts_sample.dart';

class HomeViewSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          UIHelper.verticalSpaceLarge,
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              'Welcome ${Provider.of<UserSample>(context).name}',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text('Here are all your posts', style: Theme.of(context).textTheme.bodyText2),
          ),
          UIHelper.verticalSpaceSmall,
          Expanded(child: PostsSample(),)
        ],
      ),
    );
  }
}
