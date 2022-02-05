import 'package:flutter/material.dart';
import 'package:myfirst/views/offer_details.dart';
import 'package:myfirst/views/products_list.dart';

class MainPage extends StatelessWidget {
  Widget _buildImageContainer(
      {required String imageUrl, required VoidCallback? onPressed}) {
    return GestureDetector(
        onTap: onPressed,
        child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(imageUrl), fit: BoxFit.cover)))));
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
                Container(
                  color: Color(0xFF8CA43C),
                  height: 3.0,
                  width: 60.0,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.center,
                  child: Text(
                    "الريحان",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF8CA43C),
                    ),
                  ),
                ),
                Container(
                  color: Color(0xFF8CA43C),
                  height: 3.0,
                  width: 60.0,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "صحة وحياة",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF592542),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            _buildImageContainer(
                imageUrl:
                    "https://media.istockphoto.com/photos/variety-of-nuts-on-white-picture-id153760833?s=612x612",
                onPressed:() => _onPressOnImage(context,1)),
            _buildImageContainer(
                imageUrl:
                    "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/mixe-of-various-nuts-background-above-closeup-royalty-free-image-1570564526.jpg?resize=980:*",
                onPressed: () => _onPressOnImage(context,2)),
          ],
        ));
  }

  void _onPressOnImage(BuildContext context,int image_index) {

if(image_index==1) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => ProductPage()));
}
else {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => OfferDetails()));
}
  }
}
