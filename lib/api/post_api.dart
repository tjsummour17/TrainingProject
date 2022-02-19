import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:training_project/api/end_points.dart';
import 'package:training_project/models/post.dart';

class PostApi {
  PostApi._();

  static Future<List<Post>?> get() async {
    Map<String, String> headers = {'app-id': EndPoints.API_KEY};
    http.Request request = http.Request('GET', Uri.parse('${EndPoints.BASE_URL}${EndPoints.POST}'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      String responseBody = await response.stream.bytesToString();
      Map parsedResponse = jsonDecode(responseBody);
      List<Post> posts = [];
      for(var post in parsedResponse["data"]){
        posts.add(Post.fromJson(post));
      }
      return posts;
    } else {
      log(response.reasonPhrase.toString());
      return null;
    }
  }
}
