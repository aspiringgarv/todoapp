import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/main.dart';

import '../models/task.dart';
class Tasktile extends StatelessWidget {
  final bool ischecked;
  final String title;
  final void Function() removefromlist;
   final Function(bool?) togglestate;
Tasktile({required this.ischecked,required this.title,required this.togglestate,required this.removefromlist});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title,style: TextStyle(decoration: ischecked?TextDecoration.lineThrough:null)),
      trailing:  Checkbox(
        activeColor: Colors.lightBlue,
        value: ischecked,
        onChanged: togglestate,
      ),
      splashColor: Colors.blue,
      leading: IconButton(onPressed: remove, icon: Icon(Icons.remove_circle)),
    );
  }
}


// class Taskcheckbox extends StatelessWidget {
//  bool stateofbox;
//  final Function(bool?) togglestate;
//   Taskcheckbox(this.stateofbox,this.togglestate);
//   @override
//   Widget build(BuildContext context) {
//     return;
//   }
// }

