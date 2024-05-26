import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';

import '../models/todoTask.dart';

class ToDoFileAccess {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    print(directory.path);
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/todoList.txt');
  }

  Future<List<ToDoTask>> readToDoList() async {
    try {
      final file = await _localFile;

      String contents = await file.readAsStringSync();
      print("ooooooooooo");
      List<ToDoTask> todoList = toDoTaskFromJson(contents);

      return todoList;
    } catch (e) {
      print(e);
      return [];
    }
  }

  Future<int> writeToDo(List<ToDoTask> todoList) async {
    try {
      final file = await _localFile;
      print(file);
      String todoListStr = toDoTasktoJson(todoList);

      file.writeAsString(todoListStr);
      return 1;
    } catch (e) {
      print(e);
      return 0;
    }
  }
}
