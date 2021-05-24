import 'package:covidreq/Screens/AmbulanceScreen.dart';
import 'package:covidreq/Screens/LoginScreen.dart';
import 'package:covidreq/Screens/MedicineScreen.dart';
import 'package:covidreq/Screens/OxygenScreen.dart';
import 'package:covidreq/Screens/PlasmaScreen.dart';
import 'package:covidreq/Screens/TiffinScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        title: Text(
          "Reqvid",
          style: TextStyle(
            fontFamily: 'Pattaya',
            fontSize: 35,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 150.0,
              height: 50.0,
              margin: EdgeInsets.only(top: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green[700],
                ),
                child: Text("Medicine"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => MedicineScreen()));
                },
              ),
            ),
            Container(
              width: 150.0,
              height: 50.0,
              margin: EdgeInsets.only(top: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green[700],
                ),
                child: Text("Tiffin"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => TiffinScreen()));
                },
              ),
            ),
            Container(
              width: 150.0,
              height: 50.0,
              margin: EdgeInsets.only(top: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green[700],
                ),
                child: Text("Ambulance"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => AmbulanceScreen()));
                },
              ),
            ),
            Container(
              width: 150.0,
              height: 50.0,
              margin: EdgeInsets.only(top: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green[700],
                ),
                child: Text("Oxygen"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => OxygenScreen()));
                },
              ),
            ),
            Container(
              width: 150.0,
              height: 50.0,
              margin: EdgeInsets.only(top: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green[700],
                ),
                child: Text("Plasma"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => PlasmaScreen()));
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 100),
              child: GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => LoginScreen())),
              child: Text(
                "Log Out",
                style: TextStyle(
                  color: Colors.green[700],
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
            ),
          ],
        ),
      ),
    );
  }
}
