import 'package:flutter/material.dart';
import 'package:helpmeapp/providers/logs_provider.dart';
import 'package:helpmeapp/providers/user_data.dart';
import 'package:helpmeapp/screens/homescreen.dart';

import 'package:helpmeapp/screens/viewfriend.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: User()),
        ChangeNotifierProvider.value(value: LogsProvider()),
      ],
      child: MaterialApp(
        title: 'Help Me App',
        theme: ThemeData.dark(),
        home: MyHomePage(),
        routes: {ViewFriend.routeName: (ctx) => ViewFriend()},
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Provider.of<LogsProvider>(context, listen: false).retrievelog();
    return Scaffold(
      body: HomeScreen(),
    );
  }
}
