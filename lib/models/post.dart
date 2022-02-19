import 'package:training_project/models/user.dart';

class Post {
  String id;
  String image;
  int likes;
  List<String>? tags;
  String text;
  String publishDate;
  User? owner;

  Post({this.id = "", this.image = "", this.likes = 0, this.tags, this.text = "", this.publishDate = "", this.owner});

  factory Post.fromJson(Map<String, dynamic> json) => Post(
      id: json['id'] ?? "-1",
      image: json['image'] ?? "",
      likes: json['likes'] ?? 0,
      tags: json['tags']?.cast<String>() ?? [],
      text: json['text'] ?? "Empty",
      publishDate: json['publishDate'] ?? DateTime.now().toString(),
      owner: json['owner'] != null ? User.fromJson(json['owner']) : null);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = this.id;
    data['image'] = this.image;
    data['likes'] = this.likes;
    data['tags'] = this.tags;
    data['text'] = this.text;
    data['publishDate'] = this.publishDate;
    if (this.owner != null) {
      data['owner'] = this.owner!.toJson();
    }
    return data;
  }
}
