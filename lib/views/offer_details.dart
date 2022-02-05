import 'dart:collection';

import 'package:flutter/material.dart';

class OfferDetails extends StatelessWidget {
  static const String id = "/OfferDetails";

  const OfferDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? arguments = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: Text("Offer Details")),
      body: Center(child: Text(arguments)),
    );
  }
}
