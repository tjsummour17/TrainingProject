import 'package:flutter/material.dart';
import 'package:training_project/views/main_page.dart';
import 'package:training_project/views/offer_details.dart';

class MyApplicationMaterial extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        MainPage.id: (context) => MainPage(),
        OfferDetails.id: (context) => OfferDetails(),
      },

      theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Color(0xFF731B45)),
          primaryColor: Colors.red,
          colorScheme: ColorScheme.light(secondary: Colors.blue),
          textTheme: TextTheme(headline1: TextStyle(fontSize: 40, color: Colors.blue))),
      darkTheme: ThemeData(
          primaryColor: Colors.red,
          colorScheme: ColorScheme.dark(secondary: Colors.blue),
          textTheme: TextTheme(headline1: TextStyle(fontSize: 30, color: Colors.green))),
      themeMode: ThemeMode.system,
    );
  }
}
