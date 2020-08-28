import 'package:flutter/material.dart';
import 'package:helpmeapp/widgets/appdrawer.dart';
import 'package:helpmeapp/widgets/searchbar.dart';

class AddFriend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Friends and Family'),
      ),
      body: SearchBar(),
    );
  }
}
