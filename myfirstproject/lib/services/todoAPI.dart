import '../configs/apiConfig.dart';
import 'package:http/http.dart' as http;

class ToDoAPI {
  Future getTodoByID(int id) async {
    var url = Uri.https(BaseAPI, todos + id.toString());
    print(url.toString());
    var response = await http.get(url);
    // print('Response status: ${response.statusCode}');
    // print('Response body: ${response.body}');
    if (response.statusCode != 200) {
      print("Error");
      print('Response status: ${response.statusCode}');
      return null;
    } else {
      print('Response body: ${response.body}');
      return response.body;
    }
  }

  Future sendUserData(String email, String pw) async {
    var url = Uri.https(BaseAPI, login);
    var response = await http.post(url, body: {"email": email, "password": pw});
    if (response.statusCode != 200) {
      print("Error");
      print('Response status: ${response.statusCode}');
      return null;
    } else {
      return response.body;
    }
  }
}
