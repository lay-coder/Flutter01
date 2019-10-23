import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter01/store/index.dart';

class MySlider extends StatelessWidget {
  const MySlider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final schedule = Provider.of<MySchedule>(context);
    return Slider(
      value: schedule.stateManagementTime,
      onChanged: (value) => schedule.stateManagementTime = value,
    );
  }
}
