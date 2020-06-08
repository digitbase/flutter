import 'package:flutter/material.dart';

class DuStepperDemo extends StatefulWidget {
  @override
  _DuStepperDemoState createState() => _DuStepperDemoState();
}

class _DuStepperDemoState extends State<DuStepperDemo> {
  int _currenStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DuStepper'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Theme(
              data: Theme.of(context).copyWith(
                primaryColor: Colors.black,
              ),
              child: Stepper(
                currentStep: _currenStep,
                onStepTapped: (int v) {
                  print(v.toString());
                  setState(() {
                    _currenStep = v;
                  });
                },
                onStepCancel: () {
                  print(_currenStep);
                  setState(() {
                    _currenStep > 0 ? _currenStep -= 1 : _currenStep = 0;
                  });
                },
                onStepContinue: () {
                  print(_currenStep);
                  setState(() {
                    _currenStep < 2 ? _currenStep += 1 : _currenStep = 0;
                  });
                },
                steps: [
                  Step(
                    title: Text('Login1'),
                    subtitle: Text('sub 1'),
                    content: Text(
                      "Quis incididunt adipisicing tempor aliqua aliqua dolore qui anim sunt anim non ea.",
                    ),
                    isActive: _currenStep == 0,
                  ),
                  Step(
                    title: Text('Login2'),
                    subtitle: Text('sub 2'),
                    content: Text(
                      "Eiusmod id voluptate cupidatat ea non mollit veniam occaecat incididunt ad tempor..",
                    ),
                    isActive: _currenStep == 1,
                  ),
                  Step(
                    title: Text('Login3'),
                    subtitle: Text('sub 3'),
                    content: Text(
                      "Occaecat tempor Lorem exercitation proident consequat ut enim.",
                    ),
                    isActive: _currenStep == 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
