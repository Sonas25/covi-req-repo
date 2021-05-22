import 'package:flutter/material.dart';
import 'package:covidreq/Methods.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reqvid"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 8),
             child: ElevatedButton(
               child: Text("Medicine"),
               onPressed:(){},
               ) ,),
               Container(
                margin: EdgeInsets.only(top: 8),
             child: ElevatedButton(
               child: Text("Food"),
               onPressed:(){},
               ) ,),
               Container(
                margin: EdgeInsets.only(top: 8),
             child: ElevatedButton(
               child: Text("Ambulance"),
               onPressed:(){},
               ) ,),
               Container(
                margin: EdgeInsets.only(top: 8),
             child: ElevatedButton(
               child: Text("Oxygen"),
               onPressed:(){},
               ) ,),
               Container(
                margin: EdgeInsets.only(top: 8),
             child: ElevatedButton(
               child: Text("Plasma"),
               onPressed:(){},
               ) ,),
               Container(
                margin: EdgeInsets.only(top: 8),
             child: TextButton(
               child: Text("logout"),
               onPressed: () => logOut(context),
               ) ,),

            ],
          ),
          )
      
    );
  }
}