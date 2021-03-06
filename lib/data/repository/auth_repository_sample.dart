import 'dart:async';

import 'package:express/data/model/user_sample.dart';
import 'package:express/data/remote/api_sample.dart';
class AuthRepositorySample {
  late final ApiSample _api;

  AuthRepositorySample({required ApiSample api}) : _api = api;

  StreamController<UserSample> _userController = StreamController<UserSample>();

  Stream<UserSample> get user => _userController.stream;

  Future<bool> login(int userId) async {
    var fetchedUser = await _api.getUserProfile(userId);

    var hasUser = fetchedUser != null;
    if (hasUser) {
      _userController.add(fetchedUser);
    }

    return hasUser;
  }
}
