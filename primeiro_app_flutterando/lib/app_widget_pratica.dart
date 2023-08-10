import 'package:flutter/material.dart';
import 'package:primeiro_app_flutterando/app_controller_pratica.dart';
import 'package:primeiro_app_flutterando/home_page.dart';

import 'home_page_pratica.dart';
import 'login_page_pratica.dart';


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
          initialRoute: "/",
          routes: {
            "/" : (context) => LoginPage2(),
            "/home" : (context) => AppWidgetPratica(),
          }
        );
      }
    );
  }
}