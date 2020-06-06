import 'package:flutter/material.dart';
import 'package:myflutter/common/widgets/widgets.dart';

class DuFormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('form'),
        ),
        body: Theme(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFieldDemo(),
              ],
            ),
          ),
          data: Theme.of(context).copyWith(
            primaryColor: Colors.black54,
          ),
        ),
      ),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  String username;
  String passwd;
  final registerFormKey = GlobalKey<FormState>();
  bool autoValidateFlg = false;

  void submitRegister() {
    if (registerFormKey.currentState.validate()) {
      registerFormKey.currentState.save();

      print(username);
      print(passwd);

      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text('Registering ..'),
      ));
    } else {
      setState(() {
        autoValidateFlg = true;
      });
    }
  }

  String validatorUser(valuse) {
    if (valuse.isEmpty) {
      return 'Username is required';
    }
  }

  String validatorPass(valuse) {
    if (valuse.isEmpty) {
      return 'Password is required';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(children: [
        Text('d'),
        TextFormField(
          obscureText: false,
          decoration: InputDecoration(
            labelText: 'UserName',
            icon: Icon(Icons.subject),
            helperText: '',
          ),
          onSaved: (v) {
            username = v;
          },
          validator: validatorUser,
          autovalidate: autoValidateFlg,
        ),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            icon: Icon(Icons.subway),
            helperText: '',
          ),
          onSaved: (v) {
            passwd = v;
          },
          validator: validatorPass,
          autovalidate: autoValidateFlg,
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          color: Theme.of(context).accentColor,
          width: double.infinity,
          child: FlatButton(
            onPressed: submitRegister,
            child: Text(
              'Register',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

//您 邓
