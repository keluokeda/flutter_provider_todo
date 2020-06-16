import 'package:flutter/foundation.dart';

class TodoModel with ChangeNotifier {
  List<TodoEntity> _list = [];

  List<TodoEntity> get todoList => _list;

  void addTodo(String title, String description) {
    TodoEntity todoEntity = TodoEntity(title, description, false);

    _list.add(todoEntity);
    notifyListeners();
  }

  void toggleTodo(TodoEntity todoEntity) {
    if (_list.contains(todoEntity)) {
      todoEntity.checked = !todoEntity.checked;
      notifyListeners();
    }
  }

  bool removeTodo(TodoEntity todoEntity) {
    _list.remove(todoEntity);
  }
}

class TodoEntity {
  String title;
  String description;
  bool checked;

  TodoEntity(this.title, this.description, this.checked);
}
