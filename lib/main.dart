import 'package:flutter/material.dart';
import 'package:flutterprovidertodo/add_todo_page.dart';
import 'package:flutterprovidertodo/todo_list_page.dart';
import 'package:flutterprovidertodo/todo_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: TodoModel(),
      builder: (context, child) => MaterialApp(
        title: 'todo',
        theme: ThemeData.light(),
        routes: {
          '/todoList': (_) => TodoListPage(),
          '/addTodo': (_) => AddTodoPage()
        },
        initialRoute: '/todoList',
      ),
    );
  }
}
