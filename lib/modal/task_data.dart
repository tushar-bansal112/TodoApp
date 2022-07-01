import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/modal/task.dart';

class TaskData extends ChangeNotifier {
  List<Tasks> tasks = [
    Tasks(name: 'Buy Milk'),
    Tasks(name: 'Buy Eggs'),
    Tasks(name: 'Buy Bread'),
  ];
  int get taskCount {
    return tasks.length;
  }

  void addTask(String? newTaskTitle) {
    final task = Tasks(name: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }

  void updateTask(Tasks task) {
    task.toggle();
    notifyListeners();
  }

  void deleteTask(Tasks task) {
    tasks.remove(task);
    notifyListeners();
  }
}
