import 'package:flutter/material.dart';
import 'package:todo_list_app/widgets/TaskTile.dart';
import 'package:todo_list_app/model/Task.dart';
import 'package:todo_list_app/model/TaskData.dart';
import 'package:provider/provider.dart';
class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child){

        return ListView.builder(itemBuilder: (context,index){
          return TaskTile(name: taskData.taskList[index].name,
            isChecked: taskData.taskList[index].isDone,checkBoxCallBack: (newValue){
              taskData.updateTask(taskData.taskList[index],);
            },longPressedCallBack: (){
            taskData.deleteTask(taskData.taskList[index]);
            },);
        },itemCount: taskData.taskCount,);
      },
    );
  }
}

