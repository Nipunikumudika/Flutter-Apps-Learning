import 'package:get/get.dart';

import '../models/user.dart';

class TestController2 extends GetxController {
  var nameList = <String>[].obs; //Observable variable-chat list

  var name = "".obs;
  var age = 0.obs;
  var user = User().obs;

  void setName(String na) {
    name.value = na;
  }

  void setAge(int a) {
    age.value = a;
  }

  void addName(String na) {
    nameList.add(na);
  }

  void setUser(User usr) {
    user.value = usr;
  }

  void updateAge(int ageNew) {
    age.value = ageNew;
  }
}
