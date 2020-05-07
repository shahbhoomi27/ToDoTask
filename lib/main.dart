import 'package:flutter/material.dart';
import 'package:todo_list_app/screens/TaskScreen.dart';
import 'package:provider/provider.dart';
import 'model/TaskData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TaskScreen(),
      ),
    );
  }
}
