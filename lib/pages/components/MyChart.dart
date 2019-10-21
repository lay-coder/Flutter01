import 'package:flutter/material.dart';
import 'package:flutter01/store/index.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:provider/provider.dart';

// class MyChart extends StatefulWidget {
//   MyChart({Key key}) : super(key: key);

//   @override
//   _MyChartState createState() => _MyChartState();
// }

// class _MyChartState extends State<MyChart> {
//   Map<String, double> dataMap = new Map();
//   List<Color> colorList = [
//     Colors.red,
//     Colors.green,
//     Colors.blue,
//     Colors.yellow,
//   ];
//   @override
//   void initState() {
//     super.initState();
//     dataMap.putIfAbsent("Flutter", () => 5);
//     dataMap.putIfAbsent("React", () => 3);
//     dataMap.putIfAbsent("Xamarin", () => 2);
//     dataMap.putIfAbsent("Ionic", () => 2);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Consumer<MySchedule>(
//       builder: (context, schedule, _) => PieChart(
//         dataMap: dataMap,
//         legendFontColor: Colors.blueGrey,
//         legendFontSize: 14.0,
//         legendFontWeight: FontWeight.w500,
//         animationDuration: Duration(milliseconds: 800),
//         chartLegendSpacing: 32.0,
//         // chartRadius: MediaQuery.of(context).size.width / 2,
//         showChartValuesInPercentage: true,
//         showChartValues: true,
//         showChartValuesOutside: false,
//         chartValuesColor: Colors.blueGrey[900].withOpacity(0.9),
//         colorList: colorList,
//         showLegends: true,
//         decimalPlaces: 1,
//       ),
//     );
//   }
// }
class MyChart extends StatelessWidget {
  // const MyChart({Key key}) : super(key: key);
  List<Color> colorList = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
  ];
  static createData(double val) {
    Map<String, double> dataMap = new Map();
    dataMap.putIfAbsent("Flutter", () => val * 10);
    dataMap.putIfAbsent("React", () => 3);
    dataMap.putIfAbsent("Xamarin", () => 2);
    dataMap.putIfAbsent("Ionic", () => 2);
    return dataMap;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MySchedule>(
      builder: (context, schedule, _) => PieChart(
        dataMap: createData(schedule.stateManagementTime),
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
        colorList: colorList,
        showLegends: true,
        decimalPlaces: 1,
      ),
    );
  }
}
