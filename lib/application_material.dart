import 'package:flutter/material.dart';
import 'package:traning/views/main_page.dart';

class MyApplicationMaterial extends StatelessWidget {
  const MyApplicationMaterial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(headline6: TextStyle(fontSize: 16,color: Colors.green[700])),
        colorScheme: ColorScheme.light(primary: Colors.green),
      ),
      home: MainPage(),
    );
  }
}
