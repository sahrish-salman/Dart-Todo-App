import 'dart:io';

List tasks = [];

void main() {
  print("========= Welcome to my Todo Application =========");
  bool isContinue = true;

  while (isContinue) {
    print("Press 1 for Add Task");
    print("Press 2 for View Task");
    print("Press 3 for Update Task");
    print("Press 4 for Delete Task");
    print("Press any other key for Exit");

    String userInput = stdin.readLineSync()!;
    if (userInput == "1") {
      addTask();
    } else if (userInput == "2") {
      viewTask();
    } else if (userInput == "3") {
      print("Enter 0 for edit 0 index of Your Task");
      print("Enter 1 for edit 1 index of Your Task");
      print("Enter 2 for edit 2 index of Your Task");
      print("Enter 3 for edit 3 index of Your Task");
      print("Enter 4 for edit 4 index of Your Task");
      print("Enter 5 for edit 5 index of Your Task");
      updateTask();
    } else if (userInput == "4") {
      print("Enter 0 for delete 0 index of Your Task");
      print("Enter 1 for delete 1 index of Your Task");
      print("Enter 2 for delete 2 index of Your Task");
      print("Enter 3 for delete 3 index of Your Task");
      print("Enter 4 for delete 4 index of Your Task");
      print("Enter 5 for delete 5 index of Your Task");
      deleteTask();
    } else {
      print("Program ended");
      isContinue = false;
    }
  }
}

addTask() {
  print("Enter Your Task Title");
  String taskTitle = stdin.readLineSync()!;
  print("Enter Your Task Due Date");
  String taskDueDate = stdin.readLineSync()!;
  Map taskDetail = {
    "Task Tltle": taskTitle,
    "Task Due Date": taskDueDate,
  };
  tasks.add(taskDetail);
  print("Task Added -> $taskTitle");
}

viewTask() {
  print("==== MY TASKS ====");
  for (var i = 0; i < tasks.length; i++) {
    print("$i. Your Task is: ${tasks[i]}");
  }
}

updateTask() {
  String updateTitle = stdin.readLineSync()!;
  if (updateTitle == "0") {
    tasks.remove(tasks[0]);
    addTask();
  } else if (updateTitle == "1") {
    tasks.remove(tasks[1]);
    addTask();
  } else if (updateTitle == "2") {
    tasks.remove(tasks[2]);
    addTask();
  } else if (updateTitle == "3") {
    tasks.remove(tasks[3]);
    addTask();
  } else if (updateTitle == "4") {
    tasks.remove(tasks[4]);
    addTask();
  } else if (updateTitle == "5") {
    tasks.remove(tasks[5]);
    addTask();
  } else {
    print("you did not update tasks");
  }
}

deleteTask() {
  String deleteTitle = stdin.readLineSync()!;
  if (deleteTitle == "0") {
    tasks.remove(tasks[0]);
  } else if (deleteTitle == "1") {
    tasks.remove(tasks[1]);
  } else if (deleteTitle == "2") {
    tasks.remove(tasks[2]);
  } else if (deleteTitle == "3") {
    tasks.remove(tasks[3]);
  } else if (deleteTitle == "4") {
    tasks.remove(tasks[4]);
  } else if (deleteTitle == "5") {
    tasks.remove(tasks[5]);
  } else {
    print("you did not delete tasks");
  }
}
