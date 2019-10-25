import 'package:flutter/material.dart';
import 'package:flutter01/store/myCount.dart';
import 'package:flutter01/store/mySchedule.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:provider/provider.dart';

class MyChart extends StatelessWidget {
  const MyChart({Key key}) : super(key: key);

  static createData(double val, int count) {
    Map<String, double> _dataMap = new Map();
    _dataMap.putIfAbsent("Flutter$count", () => val * 10);
    _dataMap.putIfAbsent("React", () => 3);
    _dataMap.putIfAbsent("Xamarin", () => 2);
    _dataMap.putIfAbsent("Ionic", () => 2);
    return _dataMap;
  }

  static const List<Color> _colorList = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
  ];
  @override
  Widget build(BuildContext context) {
    final _myCount = Provider.of<MyCount>(context);
    final _mSchedule = Provider.of<MySchedule>(context);
    return PieChart(
      dataMap: createData(_mSchedule.stateManagementTime, _myCount.count),
      legendFontColor: Colors.blueGrey,
      legendFontSize: 14.0,
      legendFontWeight: FontWeight.w500,
      animationDuration: Duration(milliseconds: 800),
      chartLegendSpacing: 32.0,
      // chartRadius: MediaQuery.of(context).size.width / 2.5,
      showChartValuesInPercentage: true,
      showChartValues: true,
      showChartValuesOutside: false,
      chartValuesColor: Colors.blueGrey[900].withOpacity(0.9),
      colorList: _colorList,
      showLegends: true,
      decimalPlaces: 1,
    );
  }
}
