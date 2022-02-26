import 'package:flutter/material.dart';
import 'package:training_project/api/post_api.dart';
import 'package:training_project/models/post.dart';

class PostViewModel extends ChangeNotifier{
  List<Post>? posts;

  PostViewModel();

  Future fetchPosts() async {
    posts = await PostApi.get();
    notifyListeners();
  }
}
