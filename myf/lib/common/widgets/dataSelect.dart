import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeDemo extends StatefulWidget {
  @override
  _DateTimeDemoState createState() => _DateTimeDemoState();
}

class _DateTimeDemoState extends State<DateTimeDemo> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectTime = TimeOfDay(
    hour: 9,
    minute: 30,
  );

  _selectTime() async {
    final TimeOfDay time = await showTimePicker(
      context: context,
      initialTime: selectTime,
    );

    if (time != null) {
      setState(() {
        selectTime = time;
      });
    }
  }

  _selectDate() async {
    final DateTime dateSelected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1990),
      lastDate: DateTime(2100),
    );

    if (dateSelected != null) {
      setState(() {
        selectedDate = dateSelected;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DateSelect'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: _selectDate,
                  child: Row(
                    children: <Widget>[
                      Text(DateFormat.yMd().format(selectedDate)),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
                InkWell(
                  onTap: _selectTime,
                  child: Row(
                    children: <Widget>[
                      Text(selectTime.format(context)),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
