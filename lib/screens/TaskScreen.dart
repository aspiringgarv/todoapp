import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/main.dart';
import 'package:todoey/widgetfolder/task_list.dart';
import 'Addtaskscreen.dart';
import 'package:todoey/models/task.dart';
class TaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context)  {
            return SingleChildScrollView(
                padding: EdgeInsets.only(bottom:MediaQuery.of(context).viewInsets.bottom),
                child: Addtaskscreen());
          },);
        },
         backgroundColor: Colors.lightBlue,
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60,left: 30,bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                    radius: 30,
                    child: Icon(Icons.list,size: 30,color: Colors.lightBlue,)),
                SizedBox(height: 10,),
                Text('Todoye',style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.w700),),
                Text('${Provider.of<addtolist>(context).tasks.length}',style: TextStyle(color: Colors.white,fontSize: 18),),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                color: Colors.white,
              ),
              child: Tasklist(),
            ),
          )
        ],
      ),
    );
  }
}



