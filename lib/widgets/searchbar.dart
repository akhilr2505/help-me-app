import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  FocusNode _focusNode;

  TextEditingController _controller;
  bool _issearch;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
          margin: EdgeInsets.all(28),
          child: TextFormField(
            controller: _controller,
            focusNode: _focusNode,
            decoration: InputDecoration(
                icon: Container(
                  margin: EdgeInsets.all(14),
                  child: Icon(Icons.search),
                ),
                labelText: "Who is your friend"),
          )),
    );
  }
}
