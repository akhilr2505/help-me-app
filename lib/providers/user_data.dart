import 'package:flutter/cupertino.dart';

class Contacts {
  final String avatar;
  final String id;
  final String name;
  final String type;
  final String phone;
  Contacts({this.id, this.avatar, this.name, this.type, this.phone});
}

class User extends ChangeNotifier {
  String name;
  String phone;
  String address;

  List<Contacts> get contacts {
    return [..._contacts];
  }

  User _info;
  List<Contacts> _contacts = [
    Contacts(
        id: '1',
        avatar: null,
        name: 'BokChoda',
        type: 'friend',
        phone: '+9199999333'),
    Contacts(
        id: '2',
        avatar: null,
        name: 'Non A BOKA',
        type: 'friend',
        phone: '+99'),
    Contacts(id: '3', avatar: null, name: 'Polizz', type: 'auth', phone: '100'),
    Contacts(id: '4', avatar: null, name: 'Amb', type: 'auth', phone: '101'),
    Contacts(
        id: '5',
        avatar: null,
        name: 'Saatwik DADA',
        type: 'friend',
        phone: '+12345678')
  ];
}
