import 'package:flutter/material.dart';
import 'package:flutterprovidertodo/todo_model.dart';
import 'package:provider/provider.dart';

class TodoListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('待办事项'),
        actions: [
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.of(context).pushNamed('/addTodo');
              })
        ],
      ),
      body: Consumer<TodoModel>(
        builder: (context, model, child) {
          return ListView.builder(
            itemBuilder: (_, index) {
              TodoEntity todoEntity = model.todoList[index];

              return CheckboxListTile(
                  title: Text(todoEntity.title),
                  subtitle: Text(todoEntity.description),
                  value: todoEntity.checked,
                  onChanged: (value) => model.toggleTodo(todoEntity));
            },
            itemCount: model.todoList.length,
          );
        },
      ),
    );
  }
}
