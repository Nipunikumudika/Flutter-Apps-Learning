import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myfirstproject/controllers/toDoController.dart';

import '../../models/todoTask.dart';

class Lec15Screen extends StatefulWidget {
  const Lec15Screen({super.key});

  @override
  State<Lec15Screen> createState() => _Lec15ScreenState();
}

class _Lec15ScreenState extends State<Lec15Screen> {
  TextEditingController todoTaskNoteCtrl = TextEditingController();
  //ToDoController toDoController = Get.find<ToDoController>();
  ToDoController toDoController = Get.put(ToDoController());

  void addTODO() {
    toDoController.insertToDo(todoTaskNoteCtrl.text);
  }

  void readTODO() {
    toDoController.readToDoFromFile();
  }

  @override
  void initState() {
    super.initState();
    readTODO();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lec 15 : TODO"),
      ),
      body: Center(
          child: Column(
        children: [
          //input field
          Container(
            width: 300,
            child: TextField(
              controller: todoTaskNoteCtrl,
            ),
          ),
          //add button
          ElevatedButton(
            onPressed: () {
              addTODO();
            },
            child: const Text("Add Todo"),
          ),

          //todo list
          ElevatedButton(
            onPressed: () {
              readTODO();
            },
            child: const Text("ReadToDo"),
          ),
          Container(
            height: 500,
            child: Obx(() => ListView.builder(
                itemCount: toDoController.todoList.value.length,
                itemBuilder: (context, index) {
                  ToDoTask toDoTask = toDoController.todoList.value[index];
                  return CheckboxListTile(
                    title: Text(toDoTask.task!),
                    value: toDoTask.isDone,
                    onChanged: (value) {},
                  );
                })),
          ),
        ],
      )),
    );
  }
}
