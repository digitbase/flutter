import 'package:flutter/material.dart';
import 'package:myflutter/common/values/values.dart';

class DuCardDemo extends StatefulWidget {
  @override
  _DuCardDemoState createState() => _DuCardDemoState();
}

class _DuCardDemoState extends State<DuCardDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CardDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: posts.map((post) {
            return Card(
              child: Column(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: ClipRRect(
                        child: Image.network(
                          post.imageUrl,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4),
                          topRight: Radius.circular(4),
                        )),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(post.imageUrl),
                    ),
                    title: Text(post.title),
                    subtitle: Text(post.author),
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      post.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  ButtonBarTheme(
                    data: ButtonBarThemeData(
                        buttonTextTheme: ButtonTextTheme.primary),
                    child: ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {},
                          child: Text("Like"),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Text("Read"),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
