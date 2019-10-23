import 'package:flutter01/store/mySchedule.dart';
import 'package:provider/provider.dart';

final List<SingleChildCloneableWidget> appStore = [
  ChangeNotifierProvider(builder: (_) => MySchedule())
];
