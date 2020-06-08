import 'package:flutter/material.dart';
import 'package:myflutter/common/values/posts.dart';

class PaginateTableDemo extends StatefulWidget {
  @override
  _PaginateTableDemoState createState() => _PaginateTableDemoState();
}

class PostDataSource extends DataTableSource {
  final List<Post> _posts = posts;
  int _selectedCount = 0;

  @override
  DataRow getRow(int index) {
    final Post post = _posts[index];
    // TODO: implement getRow
    return DataRow.byIndex(
      cells: [
        DataCell(Text(post.title)),
        DataCell(Text(post.author)),
        DataCell(Image.network(post.imageUrl)),
      ],
      index: index,
    );
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => _posts.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => _selectedCount;
}

class _PaginateTableDemoState extends State<PaginateTableDemo> {
  int _sortColumnIndex;
  bool _sortAscending = true;
  final PostDataSource _postsDataSource = PostDataSource();

  @override
  Widget build(BuildContext context) {
    var dataTable = PaginatedDataTable(
      header: Text('Posts'),
      source: _postsDataSource,
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
