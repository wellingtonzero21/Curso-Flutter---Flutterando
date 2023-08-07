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
        title: Text('Home Page'),
        actions: [CustomSwitchPratica()],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          scrollDirection: Axis.horizontal,
            children: [
              Text("Contador $counter"),
      Container(height: 25,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 50,
            height: 50,
            color: Colors.black,
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.black,
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.black,
          ),
        ],
      ),
            ],   
        ),
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

class CustomSwitchPratica extends StatelessWidget {
  const CustomSwitchPratica({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(value: AppController.instance.isDarkTheme, onChanged: (value){
               AppController.instance.changeTheme();
               },);
  }
}