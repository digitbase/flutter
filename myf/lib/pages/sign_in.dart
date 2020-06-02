import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('nihao'),
      ),
      //backgroundColor: Colors.red,
      resizeToAvoidBottomInset: false,
      body: Center(
        child : Column(

          children:[
            Text('sign in',
            style: TextStyle(
              fontSize: 30,
              color: Colors.blue,
              fontWeight: FontWeight.w400,
            ),),
            Spacer(),

          ],
        ),
      ),
    );
  }

  Widget _buildInputForm() {
    return Container();
  }

  Widget _buildThirdPartyLogin() {
    return Container();
  }

  Widget _buildSignButton() {
    return Container();
  }

  // Widget _buildInputForm() {
  //   return Container();
  // }
}
