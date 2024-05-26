import 'dart:io';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseSetup {
  static String _DBNAme = 'my_db_todo.db';
  void setUpDB() async {
    var db = await openDatabase(_DBNAme);
    await db.close();
  }

  void CreateToDoTaskTable() async {
    var databasesPath = await getDatabasesPath();

    String path = join(databasesPath, _DBNAme);
    //await deleteDatabase(path);
    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      // When creating the db, create the table
      await db.execute(
          'CREATE TABLE ToDoTask (id INTEGER PRIMARY KEY, task TEXT, isDone BOOLEAN)');
      print("ToDoTask created");
    });
  }

  Future<Database> getDatabaseInstance() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, _DBNAme);

// open the database
    Database database = await openDatabase(path, version: 1);
    return database;
  }
}
