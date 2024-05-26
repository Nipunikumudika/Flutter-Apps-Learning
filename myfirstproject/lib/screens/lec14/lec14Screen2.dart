import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myfirstproject/controllers/toDoController.dart';

import '../../models/todoTask.dart';

class Lec14Screen2 extends StatefulWidget {
  const Lec14Screen2({super.key});

  @override
  State<Lec14Screen2> createState() => _Lec14Screen2State();
}

class _Lec14Screen2State extends State<Lec14Screen2> {
  TextEditingController todoTaskNoteCtrl = TextEditingController();
  //ToDoController toDoController = Get.find<ToDoController>();
  ToDoController toDoController = Get.put(ToDoController());

  void addTODO() {
    print(todoTaskNoteCtrl.text);
    toDoController.insertToDo(todoTaskNoteCtrl.text);
  }

  void readTODO() {
    toDoController.readToDo();
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
        title: const Text("Lec 14 Screen 2 : TODO"),
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
