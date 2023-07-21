import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:primeiro_app_flutterando/home_page%20copy.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AppWidgetPratica(),
        theme: ThemeData(
          primaryColor: Colors.red,
          brightness: Brightness.light,
      ),
    );
  }
}