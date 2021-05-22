import 'package:flutter/material.dart';

class NewTiffinReq extends StatefulWidget {
  @override
  _NewTiffinReqState createState() => _NewTiffinReqState();
}

class _NewTiffinReqState extends State<NewTiffinReq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Tiffin Requirement"),
      ),
    );
  }
}