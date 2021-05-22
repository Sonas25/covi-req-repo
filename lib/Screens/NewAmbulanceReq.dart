import 'package:flutter/material.dart';

class NewAmbulanceReq extends StatefulWidget {
  @override
  _NewAmbulanceReqState createState() => _NewAmbulanceReqState();
}

class _NewAmbulanceReqState extends State<NewAmbulanceReq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Ambulance Requirement"),
      ),
    );
  }
}