import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  void openCart() {}

  void openSearchScreen() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Search for an item',
            onPressed: openSearchScreen,
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            tooltip: 'Open shopping cart',
            onPressed: openCart,
          ),
        ],
      ),
      drawer: Drawer(),
      body: ListView(padding: const EdgeInsets.all(20), children: [
        Row(
          children: [
            Expanded(child: SizedBox()),
            Expanded(flex: 1, child: Container(color: Colors.green[800], height: 2)),
            Expanded(
              flex: 3,
              child: Text(
                "Al Riahan",
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(flex: 1, child: Container(color: Colors.green[800], height: 2)),
            Expanded(child: SizedBox()),
          ],
        ),

        AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage("https://www.gettyimages.pt/gi-resources/images/Homepage/Hero/PT/PT_hero_42_153645159.jpg"))),
          ),
        )
      ]),
    );
  }
}
/*
https://www.gettyimages.pt/gi-resources/images/Homepage/Hero/PT/PT_hero_42_153645159.jpg
* ListView
* Column
* Row
* Wrap
* */
