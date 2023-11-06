import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:primeiro_app_flutterando/src/controllers/home_controller.dart';
import 'package:primeiro_app_flutterando/src/models/todo_model.dart';
import 'package:primeiro_app_flutterando/src/repositories/todo_repository.dart';

class TodoRepositoryMocktail extends Mock implements TodoRepository {}

main() {
  final repository = TodoRepositoryMocktail();
  final controller = HomeController(repository);

  test('deve preencher variavel todos', () async {
    when(() => repository.fetchTodos()) .thenAnswer((_) async => [TodoModel()]);
    await controller.start();
    expect(controller.todos.isNotEmpty, true);
  });
}