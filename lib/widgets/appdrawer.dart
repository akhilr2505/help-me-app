import 'package:flutter/material.dart';
import 'package:helpmeapp/screens/addfriend.dart';
import 'package:helpmeapp/screens/viewfriend.dart';
import 'package:helpmeapp/screens/login.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 5,
      child: ListView(
        children: [
          Container(
            color: Colors.blue,
            height: MediaQuery.of(context).size.height * 0.3,
          ),
          Divider(),
          ListTile(
              leading: Icon(Icons.people),
              title: Text('Add Friends And Family'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => AddFriend()));
              }),
          Divider(),
          ListTile(
              leading: Icon(Icons.card_giftcard),
              title: Text('View Friends and Family'),
              onTap: () {
                Navigator.of(context).pushNamed(ViewFriend.routeName);
              }),
          Divider(),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('View Logs'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.data_usage),
            title: Text('Change Logs'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Change Settings'),
          ),
          Divider(),
          ListTile(
              leading: Icon(Icons.local_parking),
              title: Text('Login'),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AuthScreen()));
              }),
        ],
      ),
    );
  }
}
