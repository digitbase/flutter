import 'package:flutter/material.dart';
import 'package:myflutter/routes.dart';
import './pages/welcome.dart';
import 'common/widgets/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //showSemanticsDebugger:true,
      routes: staticRoutes,
      initialRoute: "/",
      //home: DuNavigatorDemo()
    );
  }
}

class Myhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Welcomepage();
  }
}
