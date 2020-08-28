import 'dart:io';
//import 'package:firebase_auth/';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

@override
Widget build(BuildContext context) {
  return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: FormScreen(),
      ));
}

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  File _image;

  bool _loading = false;
  // final _auth = FirebaseAuth.instance;

  void _saveForm() async {}

  void _selectimg(File img) {
    _image = img;
  }

  final _controller = TextEditingController();
  final _key = GlobalKey<FormState>();
  Map<String, String> _info = {'email': '', 'password': '', 'username': ''};

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  var _isLogin = true;
  @override
  Widget build(BuildContext context) {
    return _loading
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Card(
            margin: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: AnimatedContainer(
                constraints: BoxConstraints(
                    minHeight: _isLogin
                        ? MediaQuery.of(context).size.height * 0.40
                        : MediaQuery.of(context).size.height * 0.46),
                duration: Duration(milliseconds: 259),
                curve: Curves.easeInBack,
                height: _isLogin
                    ? MediaQuery.of(context).size.height * 0.40
                    : MediaQuery.of(context).size.height * 0.60,
                padding: EdgeInsets.all(16),
                child: AnimatedContainer(
                  constraints: BoxConstraints(
                    minHeight: _isLogin
                        ? MediaQuery.of(context).size.height * 0.33
                        : MediaQuery.of(context).size.height * 0.60,
                  ),
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInBack,
                  child: SingleChildScrollView(
                    child: Form(
                      key: _key,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          TextFormField(
                            onSaved: (val) {
                              _info['email'] = val.trim();
                            },
                            keyboardType: TextInputType.emailAddress,
                            validator: (val) {
                              if (val.isEmpty || !val.contains('@')) {
                                return 'Please enter a valid email address';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              labelText: 'Email Address',
                            ),
                          ),
                          if (!_isLogin)
                            Container(
                              child: TextFormField(
                                onSaved: (val) {
                                  _info['username'] = val.trim();
                                },
                                validator: (val) {
                                  if (val.length < 4) {
                                    return 'Please enter atleast 4 characters';
                                  }
                                  return null;
                                },
                                decoration:
                                    InputDecoration(labelText: 'User Name'),
                              ),
                            ),
                          TextFormField(
                            controller: _controller,
                            onSaved: (val) {
                              _info['password'] = val.trim();
                            },
                            validator: (val) {
                              if (val.length < 7) {
                                return 'Password must be atleast 7 characters long';
                              }
                              return null;
                            },
                            obscureText: true,
                            decoration: InputDecoration(labelText: 'Password'),
                          ),
                          if (!_isLogin)
                            Container(
                              child: TextFormField(
                                autovalidate: true,
                                validator: (val) {
                                  if (val != _controller.text) {
                                    return 'Password doesn\'t match';
                                  }
                                  return null;
                                },
                                obscureText: true,
                                decoration: InputDecoration(
                                    labelText: 'Confirm password'),
                              ),
                            ),
                          SizedBox(
                            height: 10,
                          ),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            onPressed: _saveForm,
                            child: Text(_isLogin ? 'Login' : 'Signup'),
                          ),
                          FlatButton(
                            onPressed: () {
                              setState(() {
                                _isLogin = !_isLogin;
                              });
                            },
                            child: Text(
                                !_isLogin ? 'Login' : 'Create a new account'),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
