import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/screens/TaskScreen.dart';

import 'models/task.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<addtolist>(
      create: (context) {
        return  addtolist();
      },
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
class addtolist extends ChangeNotifier{
  List<Task> _tasks=[];
  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);  //a getter
}
  void add(Task t){
    _tasks.add(t);
    notifyListeners();
  }
  void updatetask(Task s){
    s.toggleDone();
    notifyListeners();
  }
  void remove(int x){
   _tasks.removeAt(x);
   notifyListeners();
  }
}