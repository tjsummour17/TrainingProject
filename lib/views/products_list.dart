import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String dataToView;

  const ProductPage({Key? key, required this.dataToView}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Details")),
      body: Center(
        child: Column(children: [
          Text(dataToView),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context, "lat, lang");
              },
              child: Text("Pop"))
        ]),
      ),
    );
  }
}
