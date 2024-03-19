import 'package:hive/hive.dart';

class TodoDatabase {
  //reference the box
  List todoList = [];

  final _mybox = Hive.box('mybox');

  void createInitialData() {
    todoList = [
      ["Do Exercise", false],
      ["Making Video", false]
    ];
  }

  //load the data from the database
  void loadData() {
    todoList = _mybox.get("TODOLIST");
  }

  //update database
  void updateDatabase() {
    _mybox.put("TODOLIST", todoList);
  }
}
