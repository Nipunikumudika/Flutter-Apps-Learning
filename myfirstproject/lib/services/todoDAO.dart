import 'package:myfirstproject/models/todoTask.dart';
import 'package:myfirstproject/utils/databaseSetup.dart';
import 'package:sqflite/sqflite.dart';

class ToDoDAO {
  var dbConnection;
  ToDoDAO() {
    //make DB connection
    makeConnection();
  }

  void makeConnection() async {
    this.dbConnection = await DatabaseSetup().getDatabaseInstance();
  }

  //insert a row
  Future<int> insertTODO(ToDoTask toDoTask) async {
    int outputID = -1;
    dbConnection = await DatabaseSetup().getDatabaseInstance();
    await dbConnection.transaction((txn) async {
      outputID = await txn.rawInsert(
          'INSERT INTO ToDoTask(task, isDone) VALUES("${toDoTask.task}", "${toDoTask.isDone}")');
    });
    return outputID;
  }

  //update a row

  //read a row
  Future<List<Map>> readTODO() async {
    dbConnection = await DatabaseSetup().getDatabaseInstance();
    List<Map> list = await dbConnection.rawQuery('Select * FROM ToDoTask');
    print(list);
    return list;
  }
  //read all tasks

}
