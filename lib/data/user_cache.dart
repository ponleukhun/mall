import 'package:hive/hive.dart';
import 'package:mall/model/user_response/user_response.dart';

class UserCache {
  Future<Box<UserResponse>> getBox() async {
    return Hive.openBox<UserResponse>("user_box");
  }
}
