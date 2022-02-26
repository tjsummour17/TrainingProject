import 'package:flutter/material.dart';
import 'package:training_project/models/post.dart';

class PostCard extends StatelessWidget {
  final Post post;

  const PostCard({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.surface, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(post.owner!.picture!)),
            title: Text("${post.owner!.title!}. ${post.owner!.firstName!} ${post.owner!.lastName!}"),
            subtitle: Text(post.publishDate),
          ),
          AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10), image: DecorationImage(image: NetworkImage(post.image), fit: BoxFit.cover)))),
          const SizedBox(height: 10),
          Text(post.text, style: Theme.of(context).textTheme.subtitle1)
        ],
      ),
    );
  }
}
