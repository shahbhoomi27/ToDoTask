import 'package:flutter/material.dart';
import 'package:todo_list_app/widgets/CheckBox.dart';

class TaskTile extends StatelessWidget {

  TaskTile({this.name, this.isChecked,this.checkBoxCallBack,this.longPressedCallBack});

  final String name;
  bool isChecked;
  Function checkBoxCallBack;
  Function longPressedCallBack;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressedCallBack,
      title: Text(
        name,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: MyCheckBox(
        checkedBoxState: isChecked,
        toggleCheckBoxState:checkBoxCallBack,
      ),
    );
  }
}
