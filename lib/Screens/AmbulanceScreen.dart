import 'package:covidreq/Screens/NewAmbulanceReq.dart';
import 'package:flutter/material.dart';

class AmbulanceScreen extends StatefulWidget {
  @override
  _AmbulanceScreenState createState() => _AmbulanceScreenState();
}

class _AmbulanceScreenState extends State<AmbulanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ambulance"),
      ),
      floatingActionButton: FloatingActionButton(
        child:Icon (Icons.add),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=>NewAmbulanceReq()));
        },
      ),
    );
  }
}