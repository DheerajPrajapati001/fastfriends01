import 'package:flutter/material.dart';

class DatePicker extends StatelessWidget {
  const DatePicker({
    Key key,
    @required DateTime dateTime,
  }) : _dateTime = dateTime, super(key: key);

  final DateTime _dateTime;

  @override
  Widget build(BuildContext context) {
    return Text('${_dateTime.day} / ${_dateTime.month} / ${_dateTime.year}',
      style: TextStyle(
          fontSize: MediaQuery.of(context).size.width*0.037,
      ),);
  }
}