import 'package:flutter/material.dart';
import 'package:training_project/main.dart';
import 'package:training_project/models/post.dart';
import 'package:training_project/views/offer_details.dart';
import 'package:training_project/views/products_list.dart';

class MainPage extends StatelessWidget {
  static const String id = "/";

  Widget _buildImageContainer({required String imageUrl, required VoidCallback? onPressed}) {
    return GestureDetector(
        onTap: onPressed,
        child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
                margin: EdgeInsets.only(bottom: 10),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15), image: DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover)))));
  }

  Widget _buildPostContainer({required Post post}) {
    return Column(
      children: [
        AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
                margin: EdgeInsets.only(bottom: 10),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15), image: DecorationImage(image: NetworkImage(post.image), fit: BoxFit.cover)))),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          leadingWidth: 100,
          leading: Row(
            children: [
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
            ],
          ),
          title: Text("الريحان"),
          centerTitle: true,
        ),
        endDrawer: Drawer(),
        body: ListView(
          padding: EdgeInsets.all(20),
          scrollDirection: Axis.vertical,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(color: Color(0xFF8CA43C), height: 3.0, width: 60.0),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.center,
                    child: Text("الريحان", style: TextStyle(fontSize: 20, color: Color(0xFF8CA43C)))),
                Container(color: Color(0xFF8CA43C), height: 3.0, width: 60.0),
              ],
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              child: Text(
                "صحة وحياة",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xFF592542)),
              ),
            ),
            SizedBox(height: 15),

            for(Post post in posts!)
              _buildPostContainer(post: post),
          ],
        ));
  }

  void _onPressOnImage(BuildContext context, int image_index) async {
    if (image_index == 1) {
      String? data = await Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage(dataToView: 'This is my data')));
      if (data != null)
        showDialog(
            context: context,
            builder: (context) => AlertDialog(content: Text(data), actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("OK"))
                ]));
    } else {
      Navigator.pushNamed(context, OfferDetails.id, arguments: "We will");
    }
  }
}
