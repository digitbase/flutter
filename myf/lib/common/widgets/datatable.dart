import 'package:flutter/material.dart';
import 'package:myflutter/common/values/posts.dart';

class DuDataTableDemo extends StatefulWidget {
  @override
  _DuDataTableDemoState createState() => _DuDataTableDemoState();
}

class _DuDataTableDemoState extends State<DuDataTableDemo> {
  int _sortColumnIndex;
  bool _sortAscending = true;

  @override
  Widget build(BuildContext context) {
    var dataTable = DataTable(
      sortColumnIndex: _sortColumnIndex,
      sortAscending: _sortAscending,
      onSelectAll: (bool value) {},
      columns: <DataColumn>[
        DataColumn(
          label: Text('title'),
          onSort: (int index, bool ascending) {
            setState(() {
              _sortColumnIndex = index;
              _sortAscending = ascending;

              print('_sortColumnIndex : ${_sortColumnIndex}');
              print('_sortAscending : ${_sortAscending}');

              posts.sort((a, b) {
                if (!ascending) {
                  final c = a;
                  a = b;
                  b = c;
                }
                return a.title.length.compareTo(b.title.length);
              });
            });
          },
        ),
        DataColumn(
          label: Text('Author'),
        ),
        DataColumn(
          label: Text('Image'),
        ),
      ],
      rows: posts.map((post) {
        return DataRow(
          onSelectChanged: (bool value) {
            setState(() {
              if (post.selected != value) {
                post.selected = value;
              }
            });
          },
          selected: post.selected,
          cells: [
            DataCell(Text(post.title)),
            DataCell(Text(post.author)),
            DataCell(Image.network(post.imageUrl)),
          ],
        );
      }).toList(),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTable'),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: ListView(
          children: <Widget>[
            dataTable,
          ],
        ),
      ),
    );
    ;
  }
}
