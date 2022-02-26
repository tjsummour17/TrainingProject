import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_project/models/post.dart';
import 'package:training_project/viewmodels/post_viewmodel.dart';
import 'package:training_project/views/widgets/post_card.dart';

class MainPage extends StatefulWidget {
  static const String id = "/";

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  initState() {
    super.initState();
    Provider.of<PostViewModel>(context, listen: false).fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    PostViewModel postViewModel = Provider.of<PostViewModel>(context, listen: true);
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
            centerTitle: true),
        body: (postViewModel.posts != null)
            ? ListView(
                padding: EdgeInsets.all(10),
                children: [
                  for (Post post in postViewModel.posts!) PostCard(post: post),
                ],
              )
            : Center(child: CircularProgressIndicator()));
  }
}
