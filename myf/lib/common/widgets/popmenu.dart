import 'package:flutter/material.dart';

class DuPopMenuButtonDemo extends StatefulWidget {
  @override
  _DuPopMenuButtonDemoState createState() => _DuPopMenuButtonDemoState();
}

class _DuPopMenuButtonDemoState extends State<DuPopMenuButtonDemo> {
  String selectv = 'no';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              selectv,
            ),
            PopupMenuButton(
              onSelected: (v) {
                print(v);
                setState(() {
                  selectv = v;
                });
              },
              itemBuilder: (BuildContext context) => [
                PopupMenuItem(
                  value: 'Home',
                  child: Text('Home'),
                ),
                PopupMenuItem(
                  value: 'Disc',
                  child: Text('Disc'),
                ),
                PopupMenuItem(
                  value: 'Discover',
                  child: Text('Discover'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
