import 'package:flutter/material.dart';

class DuButtonDemo extends StatelessWidget {
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
          children: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.clear),
              onPressed: null,
              label: Text('aaaaa'),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('bb'),
              shape: StadiumBorder(),
            ),
            RaisedButton.icon(
              icon: Icon(Icons.add),
              onPressed: () {},
              label: Text('ccc'),
            ),
            OutlineButton.icon(
              onPressed: null,
              icon: Icon(Icons.clear),
              label: Text('dddd'),
            ),
            OutlineButton(
              onPressed: () {},
              child: Text('OutlineButton'),
              splashColor: Colors.grey,
              color: Theme.of(context).accentColor,
              shape: StadiumBorder(),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: FlatButton.icon(
                      color: Colors.red,
                      icon: Icon(Icons.clear),
                      onPressed: null,
                      label: Text('aaaaa'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: FlatButton.icon(
                      icon: Icon(Icons.clear),
                      onPressed: null,
                      label: Text('bbb'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              height: 10,
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              //buttonPadding:

              children: <Widget>[
                FlatButton(
                  onPressed: null,
                  child: Text('aaaa'),
                ),
                FlatButton(
                  onPressed: null,
                  child: Text('bbbb'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
    ;
  }
}

class DeFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _floatingActionButton = FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add),
      elevation: 0.0,
      backgroundColor: Colors.black87,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    );

    final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
      onPressed: null,
      label: Icon(Icons.add),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: Container(),
      floatingActionButton: _floatingActionButtonExtended,
    );
    ;
  }
}

class DuListItem extends StatelessWidget {
  String title;
  Widget page;

  DuListItem({this.title, this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
