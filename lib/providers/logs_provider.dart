import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:location/location.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Log {
  final LocationData location;
  final DateTime time;
  Log({this.location, this.time});
}

class LogsProvider with ChangeNotifier {
  List<Log> _logs = [];
  List<Log> get getlog {
    return [..._logs];
  }

  List<Map<String, dynamic>> setlog() {
    final _prefs = SharedPreferences.getInstance();
    List<Map<String, dynamic>> _temp = [];
    _logs.forEach((element) {
      _temp.add({
        "time": element.time.toIso8601String(),
        "long": element.location.longitude,
        "lat": element.location.latitude
      });
    });
    _prefs.then((value) => value.setString("logs", jsonEncode(_temp)));
  }

  deletelog(int i) {
    _logs.removeAt(i);
    setlog();
  }

  Future<void> retrievelog() async {
    final _prefs = SharedPreferences.getInstance();
    return _prefs.then((value) {
      List<dynamic> _temp = [];
      String _l = value.getString("logs");

      _temp = jsonDecode(_l);
      _logs = [];
      _temp.forEach((element) {
        _logs.add(Log(
            location: LocationData.fromMap(
                {'longitude': element['long'], 'latitude': element['lat']}),
            time: DateTime.parse(element['time'])));
      });
    });
  }

  Future<int> insertlog() async {
    final location = Location();

    location.hasPermission().then((value) {
      if (value == PermissionStatus.granted) {
        location.getLocation().then((loc) {
          _logs.add(Log(location: loc, time: DateTime.now()));
          setlog();
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
