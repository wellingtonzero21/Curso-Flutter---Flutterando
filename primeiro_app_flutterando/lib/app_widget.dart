import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:primeiro_app_flutterando/app_controller.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
    return AnimatedBuilder(animation: AppController.instance, builder: (context, child) {
      return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: AppController.instance.isDarkTheme 
        ? Brightness.dark
        : Brightness.light,
      ),
      home: HomePage(),
        );
      }
    );
  }
}