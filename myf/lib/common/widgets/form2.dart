import 'package:flutter/material.dart';

class DuForm2Demo extends StatefulWidget {
  @override
  _DuForm2DemoState createState() => _DuForm2DemoState();
}

class _DuForm2DemoState extends State<DuForm2Demo> {
  bool _selectValue = false;
  bool _selectValue1 = false;
  int _radioValue = 0;
  int _radioListValue = 0;
  bool _switchValue = false;
  double sliderValue = 0;

  void _handleSliderChanged(double value) {
    setState(() {
      sliderValue = value;
      print(value);
    });
  }

  void _handleRadioChanged(int value) {
    setState(() {
      _radioValue = value;
    });
  }

  void _switchChanged(bool value) {
    setState(() {
      _switchValue = value;
    });
  }

  void _handleRadioListChanged(int value) {
    setState(() {
      _radioListValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DuForm2Demo'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Checkbox(
                  value: _selectValue,
                  onChanged: (v) {
                    setState(() {
                      _selectValue = v;
                    });
                  },
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            Container(
              child: CheckboxListTile(
                onChanged: (bool value) {
                  setState(() {
                    _selectValue1 = value;
                  });
                },
                value: _selectValue1,
                title: Text('Title'),
                subtitle: Text('subTitle'),
                secondary: Icon(Icons.bookmark),
                selected: _selectValue1,
              ),
            ),
            Row(
              children: <Widget>[
                Radio(
                  value: 0,
                  groupValue: _radioValue,
                  onChanged: _handleRadioChanged,
                  activeColor: Colors.brown,
                ),
                Radio(
                  value: 1,
                  groupValue: _radioValue,
                  onChanged: _handleRadioChanged,
                  activeColor: Colors.brown,
                ),
                Radio(
                  value: 2,
                  groupValue: _radioValue,
                  onChanged: _handleRadioChanged,
                  activeColor: Colors.brown,
                ),
              ],
            ),
            Container(
              child: RadioListTile(
                value: 1,
                groupValue: _radioListValue,
                onChanged: _handleRadioListChanged,
                title: Text('this is title 1'),
                subtitle: Text('sub title'),
              ),
            ),
            Container(
              child: RadioListTile(
                value: 2,
                groupValue: _radioListValue,
                onChanged: _handleRadioListChanged,
                title: Text('this is title 2'),
                subtitle: Text('sub title'),
              ),
            ),
            Container(
              child: RadioListTile(
                value: 3,
                groupValue: _radioListValue,
                onChanged: _handleRadioListChanged,
                title: Text('this is title 3'),
                subtitle: Text('sub title'),
                secondary: Icon(Icons.vertical_align_center),
              ),
            ),
            Container(
              child: SwitchListTile(
                value: _switchValue,
                onChanged: _switchChanged,
                title: Text('this is title 3'),
                subtitle: Text('sub title'),
                selected: _switchValue,
                secondary: Icon(Icons.email),
              ),
            ),
            Container(
              child: Slider(
                value: sliderValue,
                onChanged: _handleSliderChanged,
                label: sliderValue.toInt().toString(),
                divisions: 10,
                max: 10,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('value is :'),
                Text(sliderValue.toInt().toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
