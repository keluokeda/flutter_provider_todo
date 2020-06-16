import 'package:flutter/material.dart';
import 'package:flutterprovidertodo/todo_model.dart';
import 'package:provider/provider.dart';

class AddTodoPage extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('添加待办事项'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(hintText: '标题'),
              controller: _nameController,
            ),
            SizedBox(
              height: 16,
            ),
            TextFormField(
              decoration: InputDecoration(hintText: '描述'),
              controller: _descController,
            ),
            SizedBox(height: 16),
            RaisedButton(
              onPressed: () {
                Provider.of<TodoModel>(context,listen: false)
                    .addTodo(_nameController.text, _descController.text);

                Navigator.of(context).pop();
              },
              child: Text('添加'),
            )
          ],
        ),
      ),
    );
  }
}
