import 'package:flutter/material.dart';
import 'package:helpmeapp/widgets/appdrawer.dart';
import 'package:helpmeapp/widgets/searchbar.dart';

class ViewFriend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Friends and Family'),
      ),
      body: SearchBar(),
    );
  }
}
