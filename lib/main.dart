import 'package:flutter/material.dart';
import 'package:yt_tuts/home.dart';

void main(){
  runApp(const ListViewApp());
}

class ListViewApp extends StatelessWidget{
  const ListViewApp({super.key});

  @override
  Widget build(BuildContext context) {
   return const MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Home(),
   );
  }
}