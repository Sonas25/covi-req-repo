import 'package:flutter/material.dart';

class NewOxygenReq extends StatefulWidget {
  @override
  _NewOxygenReqState createState() => _NewOxygenReqState();
}

class _NewOxygenReqState extends State<NewOxygenReq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Oxygen Requirement"),
      ),
    );
  }
}