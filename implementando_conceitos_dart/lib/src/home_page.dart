import 'package:flutter/material.dart';
import 'package:primeiro_app_flutterando/src/controllers/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.start();
  }

  final controller = HomeController();

  _sucess() {
    return ListView.builder(
      itemCount: controller.todos.length,
      itemBuilder: (context, index) {
        var todo = controller.todos[index];
        return ListTile(
          title: Text(todo.title!),
        );
      },
    );
  }

  _error() {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            controller.start();
          },
          child: Text("Tentar novamente")),
    );
  }

  _loading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  _start() {
    return Container();
  }

  stateManagement(HomeState state) {
    switch (state) {
      case HomeState.start:
        return _start();
      case HomeState.loading:
        return _loading();
      case HomeState.error:
        return _error();
      case HomeState.sucess:
        return _sucess();
      default:
        return _start();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: AnimatedBuilder(animation: controller.state, builder: (context, child) {
        return stateManagement(controller.state.value);
      },),
    );
  }
}
