import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference our box
  final _myBox = Hive.box('myBox');

  // run this method if this is the 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ['Get married', false],
      ['Become a Senior SWE', false],
    ];
  }

  // load the data from the database
  void loadData() {
     toDoList = _myBox.get('TODOLIST');
  }

  // update the database
  void updateDataBase(){
    _myBox.put('TODOLIST', toDoList);
  }
}
