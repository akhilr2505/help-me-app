import 'package:flutter/material.dart';
import 'package:helpmeapp/providers/user_data.dart';
import 'package:provider/provider.dart';

class LocalList extends StatelessWidget {
  final List<Contacts> _users;
  LocalList(this._users);
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        itemBuilder: (builder, i) => Card(
          elevation: 5,
          child: ListTile(
            leading: Text(_users[i].name),
            title: Text(_users[i].phone),
          ),
        ),
        itemCount: _users.length,
      ),
    );
  }
}
