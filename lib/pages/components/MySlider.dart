import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter01/store/index.dart';

// class MySlider extends StatefulWidget {
//   MySlider({Key key}) : super(key: key);

//   @override
//   __MySliderState createState() => __MySliderState();
// }

// class __MySliderState extends State<MySlider> {
//   var _value = 0.5;
//   void _onValueChanged(double value) {
//     setState(() => _value = value);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Slider(
//       value: _value,
//       onChanged: _onValueChanged,
//     );
//   }
// }

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
