import 'package:flutter/material.dart';
import 'package:myfirst/main_page.dart';

class MyApplicationMaterial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Color(0xFF731B45)),
          primaryColor: Colors.red,
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.blue),
          backgroundColor: Colors.white,
          textTheme: TextTheme(
              headline1: TextStyle(
            fontSize: 40,
            color: Colors.blue,
          ))),
      darkTheme: ThemeData(
          primaryColor: Colors.red,
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.blue),
          backgroundColor: Colors.black,
          textTheme: TextTheme(
              headline1: TextStyle(
            fontSize: 30,
            color: Colors.green,
          ))),
      themeMode: ThemeMode.system,
      home: MainPage(),
    );
  }
}
