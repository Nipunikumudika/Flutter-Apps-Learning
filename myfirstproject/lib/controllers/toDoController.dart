import 'package:get/get.dart';
import 'package:myfirstproject/models/todoTask.dart';
import 'package:myfirstproject/services/todoDAO.dart';

import '../services/todoFileAcess.dart';

class ToDoController extends GetxController {
  var todoList = <ToDoTask>[].obs;

  void insertToDo(String task) async {
    ToDoTask toDoTask = ToDoTask(isDone: false, task: task);

    ToDoDAO toDoDAO = ToDoDAO();

    int id = await toDoDAO.insertTODO(toDoTask);

    toDoTask.id = id;

    todoList.add(toDoTask);
  }

  void readToDo() async {
    ToDoDAO toDoDAO = ToDoDAO();
    List<Map> todoL = await toDoDAO.readTODO();
    for (Map oneT in todoL) {
      ToDoTask toDoTask = ToDoTask(
          isDone: oneT["isDone"] == 0 ? false : true,
          task: oneT["task"],
          id: oneT["id"]);
      todoList.add(toDoTask);
    }
  }

  void insertToDoFile(String task) async {
    ToDoTask toDoTask = ToDoTask(
        id: DateTime.now().microsecondsSinceEpoch, isDone: false, task: task);

    ToDoFileAccess toDoFA = ToDoFileAccess();

    todoList.add(toDoTask);
    int output = await toDoFA.writeToDo(todoList);
    print("ok");
    print(output);
  }

  void readToDoFromFile() async {
    ToDoFileAccess toDoFA = ToDoFileAccess();
    List<ToDoTask> todoTasks = await toDoFA.readToDoList();
    todoList.addAll(todoTasks);
    print(todoTasks);
  }
}
