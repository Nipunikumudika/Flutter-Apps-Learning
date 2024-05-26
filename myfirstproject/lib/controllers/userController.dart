import '../models/user.dart';

class UserController {
  static User? _user;

  void setUser(User? user) {
    _user = user;
  }

  User? getUser() {
    return _user;
  }
}
