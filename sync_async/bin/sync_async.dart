import 'dart:convert';
import 'package:http/http.dart' as http;

Future main() async {
  final todo = await fetch();
  print(todo.completed);
  print(todo.userId);
}

Future<Todo> fetch() async {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
  var response = await http.get(url);
  var json = jsonDecode(response.body);
  var todo = Todo.fromJason(json);
  return todo;
}

class Todo {
  final String title;
  final int id;
  final int userId;
  final bool completed;

  Todo(
      {required this.title,
      required this.id,
      required this.userId,
      required this.completed});

  factory Todo.fromJason(Map json) {
    return Todo(
      title: json['title'],
      id: json['id'],
      userId: json['userId'],
      completed: json['completed']
    );
  }
}
