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
        name: 'John lock',
        type: 'friend',
        phone: '+9199999333'),
    Contacts(
        id: '2',
        avatar: null,
        name: 'Harry Quinn',
        type: 'friend',
        phone: '+99 2343235432'),
    Contacts(
        id: '3',
        avatar: null,
        name: 'Polinski sharma',
        type: 'friend',
        phone: '+91 9834264327'),
    Contacts(
        id: '4',
        avatar: null,
        name: 'Ambika goyal',
        type: 'friend',
        phone: '+91 984321987435'),
    Contacts(
        id: '5',
        avatar: null,
        name: 'Saatwik Rishi',
        type: 'friend',
        phone: '+91 924985643'),
    Contacts(
        id: '6',
        avatar: null,
        name: 'Ambika goyal',
        type: 'friend',
        phone: '+91 984321987435'),
    Contacts(
        id: '7',
        avatar: null,
        name: 'Shashank Sinha',
        type: 'friend',
        phone: '+91 984321987435'),
    Contacts(
        id: '8',
        avatar: null,
        name: 'Gon freeks',
        type: 'friend',
        phone: '+91 984321923425'),
    Contacts(
        id: '9',
        avatar: null,
        name: 'kilua hiraku',
        type: 'friend',
        phone: '+91 945431987435'),
    Contacts(
        id: '10',
        avatar: null,
        name: 'Amol lakun',
        type: 'friend',
        phone: '+91 984321987435'),
  ];
}
