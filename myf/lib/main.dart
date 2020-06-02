import 'package:flutter/material.dart';
import 'package:myflutter/routes.dart';
import './pages/welcome.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //showSemanticsDebugger:true,
      routes: staticRoutes,
      home: Myhome()
    );
  }
}

class Myhome extends StatelessWidget {
 
 

  @override
  Widget build(BuildContext context) {
    return Welcomepage();
  }
}
