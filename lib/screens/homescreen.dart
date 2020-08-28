import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RawMaterialButton(
          fillColor: Colors.red,
          onPressed: () {},
          elevation: 5,
          child: Text(
            "SOS",
            style: TextStyle(fontSize: 50),
          ),
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.2),
          materialTapTargetSize: MaterialTapTargetSize.padded,
          shape: CircleBorder(),
        ),
      ),
    );
  }
}
