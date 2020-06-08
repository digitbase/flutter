import 'package:flutter/material.dart';

enum Option { A, B, C }

class DuSimpleDialoge extends StatefulWidget {
  @override
  _DuSimpleDialogeState createState() => _DuSimpleDialogeState();
}

class _DuSimpleDialogeState extends State<DuSimpleDialoge> {
  String _choice = 'noting';

  Future<void> _openAlterDialog() async {
    final aleroption = await showDialog(
      context: context,
      barrierDismissible: false, //强制选择
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Aler Dialog'),
          content: Text('Are you sure about this ?'),
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.pop(context, 'cancel');
              },
              child: Text('Cancel'),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pop(context, 'ok');
              },
              child: Text('Ok'),
            ),
          ],
        );
      },
    );

    setState(() {
      _choice = aleroption.toString();
    });
  }

  Future _openSimlpeDialog() async {
    final option = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text("simple Dialog"),
            children: <Widget>[
              SimpleDialogOption(
                child: Text('Option A'),
                onPressed: () {
                  Navigator.pop(context, Option.A);
                },
              ),
              SimpleDialogOption(
                child: Text('Option B'),
                onPressed: () {
                  Navigator.pop(context, Option.B);
                },
              ),
              SimpleDialogOption(
                child: Text('Option C'),
                onPressed: () {
                  Navigator.pop(context, Option.C);
                },
              ),
            ],
          );
        });

    setState(() {
      _choice = option.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Title'),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_choice,
                  style: TextStyle(
                    fontSize: 40,
                  )),
              Container(
                width: double.infinity,
                child: RaisedButton(
                  color: Colors.black12,
                  onPressed: _openAlterDialog,
                  child: Text('Open Choic'),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _openSimlpeDialog,
          child: Icon(Icons.format_list_numbered),
        ));
  }
}
