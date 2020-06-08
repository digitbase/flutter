import 'package:flutter/material.dart';

class DuChipDemo extends StatefulWidget {
  @override
  _DuChipDemoState createState() => _DuChipDemoState();
}

class _DuChipDemoState extends State<DuChipDemo> {
  String _act = "Nothing";
  String _choiced = "Nothing";
  List<String> _tags = ['Apple', "Banana", "Lemon"];
  List<String> _selected = [];

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
          children: <Widget>[
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: <Widget>[
                SizedBox(
                  width: 30,
                ),
                Chip(
                  label: Text('test'),
                ),
                Chip(
                  label: Text('Subset'),
                  backgroundColor: Colors.orange,
                ),
                Chip(
                  label: Text('Avatar'),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text('特'),
                  ),
                ),
                Chip(
                  label: Text('Avatar'),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(
                      "https://s.ohltr.com/pic/01.png",
                    ),
                  ),
                ),
                Chip(
                  label: Text('Delte'),
                  onDeleted: () {},
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.redAccent,
                  deleteButtonTooltipMessage: 'Remove this org',
                ),
                Divider(
                  color: Colors.grey,
                  height: 32.0,
                ),
                Wrap(
                  spacing: 8,
                  children: _tags.map((tag) {
                    return Chip(
                      label: Text(tag),
                      onDeleted: () {
                        setState(() {
                          _tags.remove(tag);
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    'ActionChip: $_act',
                  ),
                ),
                Wrap(
                  spacing: 8,
                  children: _tags.map((tag) {
                    return ActionChip(
                      label: Text(tag),
                      onPressed: () {
                        setState(() {
                          _act = tag;
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    'FilterChip: ${_selected.toString()}}',
                  ),
                ),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: _tags.map((tag) {
                    return FilterChip(
                      label: Text(tag),
                      selected: _selected.contains(tag),
                      onSelected: (v) {
                        setState(() {
                          if (_selected.contains(tag)) {
                            _selected.remove(tag);
                          } else {
                            _selected.add(tag);
                          }
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    'ChoiceChip: ${_choiced.toString()}',
                  ),
                ),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: _tags.map((tag) {
                    return ChoiceChip(
                      label: Text(tag,
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      selectedColor: Colors.black87,
                      selected: _choiced == tag,
                      onSelected: (v) {
                        setState(() {
                          _choiced = tag;
                        });
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _tags = ['Apple', "Banana", "Lemon"];
            _selected = [];
            _choiced = 'Nothing';
          });
        },
        child: Icon(Icons.restore),
      ),
    );
  }
}
