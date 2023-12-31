import 'package:flutter/material.dart';
import 'package:primeiro_app_flutterando/app_controller_pratica.dart';

class AppWidgetPratica extends StatefulWidget {
  @override
  State<AppWidgetPratica> createState() => _AppWidgetPraticaState();
}

class _AppWidgetPraticaState extends State<AppWidgetPratica> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Home Page'),
        actions: [CustomSwitch(),],
        ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [  
            Text('Contador $counter'),
            CustomSwitch(),
            Container(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, crossAxisAlignment: CrossAxisAlignment.center,
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(value: AppControllerPratica.instance.isDarkTheme, onChanged: (value){
          AppControllerPratica.instance.changeTheme();
        },);
  }
}