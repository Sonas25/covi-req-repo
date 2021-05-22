import 'package:flutter/material.dart';

class NewMedicineReq extends StatefulWidget {
  @override
  _NewMedicineReqState createState() => _NewMedicineReqState();
}

class _NewMedicineReqState extends State<NewMedicineReq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Medicine Requirement"),
      ),
    );
  }
}