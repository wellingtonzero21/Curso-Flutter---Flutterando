import 'package:flutter/material.dart';
import 'package:primeiro_app_flutterando/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Home Page')),
      ),
      body: Center(
        child: Switch(value: AppController.instance.isDarkTheme, onChanged: (value){
             AppController.instance.changeTheme();
        }),
      ),
      floatingActionButton:FloatingActionButton(
        child: Icon(Icons.add),
        onPressed:() {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}