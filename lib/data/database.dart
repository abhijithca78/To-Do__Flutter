import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  //reference the box
  final _myBox = Hive.box('mybox');

  //run this for the first time ever openinig the  app
  void createInitialData() {
    toDoList = [
      ["Do Project", false],
      ["Check Sugar Level", true],
      ["Clean Room", false],
      ["Reset Laptop", true],
    ];
  }

  //load data from datdabase
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
