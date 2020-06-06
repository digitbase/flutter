import 'package:flutter/material.dart';
import 'package:myflutter/common/values/values.dart';

class DuPostShow extends StatelessWidget {
  final Post posts;

  DuPostShow({@required this.posts});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(posts.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            posts.imageUrl,
          ),
          Container(
            padding: EdgeInsets.all(32),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  posts.title,
                  style: Theme.of(context).textTheme.title,
                ),
                Text(
                  posts.author,
                  style: Theme.of(context).textTheme.subtitle,
                ),
                SizedBox(height: 20),
                Text(posts.description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
