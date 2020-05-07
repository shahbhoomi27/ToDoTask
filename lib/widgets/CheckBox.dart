import 'package:flutter/material.dart';


class MyCheckBox  extends StatelessWidget {

  MyCheckBox({this.checkedBoxState,this.toggleCheckBoxState});
  final bool checkedBoxState;
  Function toggleCheckBoxState;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlue,
      value: checkedBoxState,
      onChanged: toggleCheckBoxState,
    );
  }

}


