import 'package:flutter/material.dart';

class DuNavigatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: null,
              child: Text('Home'),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/popmenu');
              },
              child: Text('About'),
            )
          ],
        ),
      ),
    );
  }
}

class DuPage extends StatelessWidget {
  final String title;

  DuPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
