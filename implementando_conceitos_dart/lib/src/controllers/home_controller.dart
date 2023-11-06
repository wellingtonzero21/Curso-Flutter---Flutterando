import 'package:primeiro_app_flutterando/src/models/todo_model.dart';
import 'package:primeiro_app_flutterando/src/repositories/todo_repository.dart';

class HomeController {
  List<TodoModel> todos = [];
  final repository = TodoRepository();
  
  Future start() async {
    todos = await repository.fetchTodos();
  }
}