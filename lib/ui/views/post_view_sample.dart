import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:express/data/model/post_sample.dart';
import 'package:express/data/model/user_sample.dart';
import 'package:express/ui/shared/app_colors.dart';
import 'package:express/ui/shared/text_styles.dart';
import 'package:express/ui/shared/ui_helpers.dart';
import 'package:express/ui/widgets/comments_sample.dart';

class PostViewSample extends StatelessWidget {
  final PostSample post;
  const PostViewSample({ Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            UIHelper.verticalSpaceLarge,
            Text(post.title, style:  Theme.of(context).textTheme.bodyText2),
            Text(
              'by ${Provider.of<UserSample>(context).name}',
              style: TextStyle(fontSize: 9.0),
            ),
            UIHelper.verticalSpaceMedium,
            Text(post.body),
            CommentsSample(post.id)
          ],
        ),
      ),
    );
  }
}
