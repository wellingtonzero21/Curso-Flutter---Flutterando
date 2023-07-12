import 'package:flutter/material.dart';

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
        child: Switch(value: isDarkTheme, onChanged: (value){
          setState(() {
            isDarkTheme = value;
          });;
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