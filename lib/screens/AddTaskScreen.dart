import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_app/model/TaskData.dart';

class AddTaskScreen extends StatelessWidget {
  String newTaskName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
//        Spacer(),
          Text(
            "Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 24,
                fontWeight: FontWeight.w700),
          ),
//        Spacer(),
          TextField(
            onChanged: (value) {
              newTaskName = value;
            },
            autofocus: true,
            textAlign: TextAlign.center,
          ),
//        Spacer(),
          FlatButton(
            onPressed: () {
              Provider.of<TaskData>(context,listen: false).addTask(newTaskName);
              Navigator.pop(context);
            },
            child: Text(
              "Add",
              style: TextStyle(fontSize: 20, color: Colors.white,),
            ),
            color: Colors.lightBlueAccent,
          ),
//        Spacer(),
        ],
      ),
    );
  }
}
