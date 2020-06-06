import 'package:flutter/material.dart';
import 'package:myflutter/common/values/values.dart';
import 'package:myflutter/common/widgets/widgets.dart';

class DuSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('test'),
      // ),

      body: CustomScrollView(
        slivers: <Widget>[
          SliverSafeArea(
            sliver: SliverPadding(
              padding: EdgeInsets.all(8),
              sliver: DuSliveListDemo(),
            ),
          ),
        ],
      ),
    );
  }
}

class DuSliveListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: 22.0,
            ),
            child: Container(
                child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.network(posts[index].imageUrl),
                        Text(
                          posts[index].title,
                          style: Theme.of(context).textTheme.title,
                        ),
                        Text(
                          posts[index].author,
                          style: Theme.of(context).textTheme.subtitle,
                        ),
                      ],
                    ),
                    Positioned.fill(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Colors.white.withOpacity(0.3),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    DuPostShow(posts: posts[index])));
                          },
                        ),
                      ),
                    ),
                  ]),
            )),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}

class DuSliveGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 1,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black54,
              ),
            ),
            child: Image.network(
              posts[index].imageUrl,
              fit: BoxFit.cover,
            ),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}
