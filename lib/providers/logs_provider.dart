import 'package:flutter/widgets.dart';
import 'package:location/location.dart';

class Log {
  final LocationData location;
  final DateTime time;
  Log({this.location, this.time});
}

class LogsProvider with ChangeNotifier {
  List<Log> _logs = [];
  List<Log> get _getlog {
    return [..._logs];
  }

  Future<int> insertlog() async {
    final location = Location();

    location.hasPermission().then((value) {
      if (value == PermissionStatus.granted) {
        location.getLocation().then((loc) {
          _logs.add(Log(location: loc, time: DateTime.now()));
        });
      } else {
        location.requestPermission().then((value) {
          if (value == PermissionStatus.granted) {
            insertlog();
          } else if (value == PermissionStatus.deniedForever) {
            _logs.add(Log(location: null, time: DateTime.now()));
          }
        });
      }
    }).catchError((e) => print(e));
  }
}
