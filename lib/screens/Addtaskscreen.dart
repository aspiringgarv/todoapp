import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/main.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/widgetfolder/task_list.dart';
import 'package:todoey/screens/TaskScreen.dart';
class Addtaskscreen extends StatelessWidget {
  String ans = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight:Radius.circular(20),topLeft:  Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 30,),
            Text(
              textAlign: TextAlign.center,
              'Add Task'
              ,style: TextStyle(fontSize: 30,color: Colors.lightBlue),),
            Container(
              height: 30,
              width: 120,
              child: TextField(
                decoration: InputDecoration(),
                autofocus: true,
               onChanged: (value) {
                 ans=value;
               },
              ),
            ),
            SizedBox(height: 10,),
            MaterialButton(
              color: Colors.lightBlue,
                onPressed: () {
                 Provider.of<addtolist>(context,listen: false).add(Task(name: ans));
                 Navigator.pop(context);
                }, child: Text("Add",style: TextStyle(color: Colors.white),)
            ),
          ],
        ),
      ),

    );
  }
}
