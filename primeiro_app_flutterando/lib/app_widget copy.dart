import 'package:flutter/material.dart';
import 'package:primeiro_app_flutterando/app_controller%20copy.dart';
import 'package:primeiro_app_flutterando/home_page%20copy.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: AppControllerPratica.instance, builder: (context, child) {
      return MaterialApp(
          theme: ThemeData(
            primaryColor: Colors.red,
            brightness: AppControllerPratica.instance.isDarkTheme 
            ? Brightness.dark
            : Brightness.light,
          ),
        home: AppWidgetPratica(),
        );
      }
    );
  }
}