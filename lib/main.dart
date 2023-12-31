import 'package:flutter/material.dart';
import 'package:flutter_prueba_error/pages/home_page.dart';
import 'package:hive_flutter/adapters.dart';


void main() async {
  //initialize hive
await Hive.initFlutter();
  //open a box
  await Hive.openBox("Habit_Database");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}
