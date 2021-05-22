import 'package:covidreq/Screens/NewOxygenReq.dart';
import 'package:flutter/material.dart';

class OxygenScreen extends StatefulWidget {
  @override
  _OxygenScreenState createState() => _OxygenScreenState();
}

class _OxygenScreenState extends State<OxygenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Oxygen"),
      ),
      floatingActionButton: FloatingActionButton(
        child:Icon (Icons.add),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=>NewOxygenReq()));
        },
      ),
    );
  }
}