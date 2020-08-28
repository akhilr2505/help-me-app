import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RawMaterialButton(
          fillColor: Colors.red,
          onPressed: () {},
          shape: CircleBorder(),
        ),
      ),
    );
  }
}
