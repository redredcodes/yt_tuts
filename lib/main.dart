import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:yt_tuts/pages/todo_page.dart';

void main() async {

  // init (initialize) the hive
  Hive.initFlutter();
  
  // open a box
  var box = await Hive.openBox('myBox');

  runApp(ToDoApp());
}

class ToDoApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,
      home: TodoPage(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.yellow
        )
      ),
    );
  }
}