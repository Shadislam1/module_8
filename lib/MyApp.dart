

import 'package:flutter/material.dart';
import 'package:module_8/Module9class_1.dart';
import 'package:module_8/Module9class_2.dart';
import 'package:module_8/Watertracker.dart';

import 'Home.dart';
import 'main.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red,
        appBarTheme: AppBarTheme(
          color: Colors.red,
          centerTitle: true,
        ),
        scaffoldBackgroundColor: Colors.grey,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.white
          ),

        ),

      ),
      title: 'Ostaed Flutter app',
      home:Watertracker(),
    );
  }
}