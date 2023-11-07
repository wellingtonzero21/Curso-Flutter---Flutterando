import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:primeiro_app_flutterando/src/models/todo_model.dart';
import 'package:primeiro_app_flutterando/src/repositories/todo_repository.dart';

class HomeController {
  List<TodoModel> todos = [];
  final TodoRepository _repository;
  final state = ValueNotifier<HomeState>(HomeState.start);

  HomeController([TodoRepository? repository])
      : _repository = repository ?? TodoRepository();

  Future start() async {
    state.value = HomeState.loading;
    try {
      todos = await _repository.fetchTodos();
      state.value = HomeState.sucess;
    } catch (e) {
      state.value = HomeState.error;
    }
  }
}
  enum HomeState{start, loading, sucess, error}
