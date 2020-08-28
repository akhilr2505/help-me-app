import 'package:flutter/material.dart';
import 'package:helpmeapp/providers/user_data.dart';
import 'package:helpmeapp/screens/homescreen.dart';
import 'package:helpmeapp/screens/login.dart';
import 'package:helpmeapp/screens/viewfriend.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MaterialApp(
      title: 'Help Me APP',
      theme: ThemeData.dark(),
      home: MyHomePage(),
=======
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: User()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        home: MyHomePage(),
        routes: {ViewFriend.routeName: (ctx) => ViewFriend()},
      ),
>>>>>>> 7890c4a7a28337a626db8a3b78027d026ac33c4b
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen(),
    );
  }
}
