import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:training_project/api/post_api.dart';
import 'package:training_project/models/post.dart';
import 'package:training_project/my_application_material.dart';

List<Post>? posts = [];

void main() async {
  try {
    posts = await PostApi.get();
  }  catch (e) {
    // TODO
    log(e.toString());
  }
  runApp(MyApplicationMaterial());
}
