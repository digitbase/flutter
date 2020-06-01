import 'package:flutter/material.dart';
import 'package:myf/posts.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.blue,
      title: 'hi hao',
      home: Myhome(),
    );
  }
}

class Myhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 2.0,
            tabs: <Widget>[
              Tab(
                icon: IconButton(icon: Icon(Icons.local_florist), onPressed: null),
              ),
              Tab(
                icon: IconButton(icon: Icon(Icons.mic_off), onPressed: null),
              ),
              Tab(
                icon: IconButton(icon: Icon(Icons.save), onPressed: null),
              ),
            ],
          ),
          leading: IconButton(
            icon: Icon(
              Icons.menu,
            ),
            onPressed: null,
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.local_florist,size: 128.0,  color:Colors.black12),
            Icon(Icons.mic_off,size: 128.0, color:Colors.black12),
            Icon(Icons.save,size: 128.0, color:Colors.black12),
          ],
        ),
      ),
      length: 3,
    );
  }

  Widget _myItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(children: [
        Image.asset(
          posts[index].imageUrl,
          height: 100,
          width: 400,
          fit: BoxFit.fill,
        ),
        Text(posts[index].title),
        SizedBox(height: 16.0),
      ]),
    );
  }
}
