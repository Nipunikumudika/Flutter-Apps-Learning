import '../../models/FirebaseModels/user.dart';
import '../../services/FirebaseServices/userService.dart';

class UserController2 {
  Future readAllUsers() async {
    UserService userService = UserService();
    List<User> userList = await userService.readAllUsers();
  }

  Future getUserByID(String userID) async {
    UserService userService = UserService();
    await userService.getUserByID(userID);
  }

  Future writeNewDoc() async {
    UserService userService = UserService();
    await userService.writeNewDoc();
  }

  Future updateDoc() async {
    UserService userService = UserService();
    await userService.updateDoc();
  }
}
