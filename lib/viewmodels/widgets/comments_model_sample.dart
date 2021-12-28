import 'package:flutter/widgets.dart';
import 'package:express/data/model/comment_sample.dart';
import 'package:express/data/remote/api_sample.dart';
import 'package:express/viewmodels/base_model.dart';

class CommentsModelSample extends BaseModel {
  ApiSample _api;

  CommentsModelSample({
    required ApiSample api,
  }) : _api = api;

  late List<CommentSample> comments;

  Future fetchComments(int postId) async {
    setBusy(true);
    comments = await _api.getCommentsForPost(postId);
    setBusy(false);
  }

  @override
  void dispose() {
    print('I have been disposed!!');
    super.dispose();
  }
}
