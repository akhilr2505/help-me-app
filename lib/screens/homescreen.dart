import 'package:flutter/material.dart';
import 'package:helpmeapp/widgets/appdrawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("USER-NAME"),
      ),
      drawer: HomeDrawer(),
      body: Center(

        child: Expanded(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("HELP ME NOW", style: TextStyle(fontSize: 37)),
                RawMaterialButton(
                  fillColor: Colors.red,
                  onPressed: () {},
                  elevation: 5,
                  child: Text(
                    "SOS",
                    style: TextStyle(fontSize: 55),
                  ),
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.37),
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  shape: CircleBorder(),
                ),
              ]),
        ),

        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Text("HELP ME NOW", style: TextStyle(fontSize: 37)),
          RawMaterialButton(
            fillColor: Colors.red,
            onPressed: () {},
            elevation: 5,
            child: Text(
              "SOS",
              style: TextStyle(fontSize: 50),
            ),
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.37),
            materialTapTargetSize: MaterialTapTargetSize.padded,
            shape: CircleBorder(),
          ),
        ]),

      ),
    );
  }
}
