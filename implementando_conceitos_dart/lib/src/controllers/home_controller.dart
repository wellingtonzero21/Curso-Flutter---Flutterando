import 'package:primeiro_app_flutterando/src/models/todo_model.dart';
import 'package:primeiro_app_flutterando/src/repositories/todo_repository.dart';

class HomeController {
  List<TodoModel> todos = [];
  final TodoRepository _repository;
  HomeState state = HomeState.start;

  HomeController([TodoRepository? repository])
      : _repository = repository ?? TodoRepository();

  Future start() async {
    state = HomeState.loading;
    try {
      todos = await _repository.fetchTodos();
      state = HomeState.sucess;
    } catch (e) {
      state = HomeState.error;
    }
  }
}
  enum HomeState{start, loading, sucess, error}
