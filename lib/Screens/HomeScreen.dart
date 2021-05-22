import 'package:covidreq/Screens/AmbulanceScreen.dart';
import 'package:covidreq/Screens/MedicineScreen.dart';
import 'package:covidreq/Screens/OxygenScreen.dart';
import 'package:covidreq/Screens/PlasmaScreen.dart';
import 'package:covidreq/Screens/TiffinScreen.dart';
import 'package:flutter/material.dart';
import 'package:covidreq/Methods.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
               onPressed:(){
                 Navigator.push(context, MaterialPageRoute(builder: (_)=>MedicineScreen()));
               },
               ) ,),
               Container(
                margin: EdgeInsets.only(top: 8),
             child: ElevatedButton(
               child: Text("Tiffin"),
               onPressed:(){
                 Navigator.push(context, MaterialPageRoute(builder: (_)=>TiffinScreen()));
               },
               ) ,),
               Container(
                margin: EdgeInsets.only(top: 8),
             child: ElevatedButton(
               child: Text("Ambulance"),
               onPressed:(){
                 Navigator.push(context, MaterialPageRoute(builder: (_)=>AmbulanceScreen()));
               },
               ) ,),
               Container(
                margin: EdgeInsets.only(top: 8),
             child: ElevatedButton(
               child: Text("Oxygen"),
               onPressed:(){
                 Navigator.push(context, MaterialPageRoute(builder: (_)=>OxygenScreen()));
               },
               ) ,),
               Container(
                margin: EdgeInsets.only(top: 8),
             child: ElevatedButton(
               child: Text("Plasma"),
               onPressed:(){
                 Navigator.push(context, MaterialPageRoute(builder: (_)=>PlasmaScreen()));
               },
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