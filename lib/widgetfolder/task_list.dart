import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../main.dart';
import '../models/task.dart';
import 'task_tile.dart';
import 'package:todoey/screens/TaskScreen.dart';

class Tasklist extends StatelessWidget {
  const Tasklist({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<addtolist>(
      builder: (context,addtolist, child){
        return ListView.builder(itemBuilder: (context, index){
          return Tasktile(ischecked: addtolist.tasks[index].isDone, title: addtolist.tasks[index].name,
            togglestate: (value){
              addtolist.updatetask(addtolist.tasks[index]);
              //call the fxn which change the isdone to current state
            },
            removefromlist: (){
            addtolist.remove(index);
            },
          );
        },
          itemCount:addtolist.tasks.length,
        );
      },
    );
  }
}

