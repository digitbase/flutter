import 'package:flutter/material.dart';
import "dart:async";

class DuStatusLessDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DuStatusLessDemo'),
      ),
      body: Container(),
    );
  }
}

class DuStatusFulDemo extends StatefulWidget {
  @override
  _DuStatusFulDemoState createState() => _DuStatusFulDemoState();
}

class _DuStatusFulDemoState extends State<DuStatusFulDemo> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DuStatusFulDemo'),
      ),
      body: Counter(_count),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class Counter extends StatelessWidget {
  final int counttt;

  Counter(this.counttt);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Chip(
        label: Text('$counttt',
            style: TextStyle(
              fontSize: 20,
            )),
      ),
    );
  }
}

class DuStremDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StremDemo'),
      ),
      body: DeStreamHome(),
    );
    ;
  }
}

class DeStreamHome extends StatefulWidget {
  @override
  _DeStreamHomeState createState() => _DeStreamHomeState();
}

class _DeStreamHomeState extends State<DeStreamHome> {
  void initState() {
    super.initState();

    Stream<String> _streamDemo = Stream.fromFuture(fetchData());

    print('Start Listening Strem.');
    _streamDemo.listen(onData);
    print('asdfadfafasfaf');
  }

  void onData(String data) {
    print(data);
  }

  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 3));
    return "hello ~";
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
