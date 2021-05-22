import 'package:covidreq/Screens/NewPlasmaReq.dart';
import 'package:flutter/material.dart';

class PlasmaScreen extends StatefulWidget {
  @override
  _PlasmaScreenState createState() => _PlasmaScreenState();
}

class _PlasmaScreenState extends State<PlasmaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Plasma"),
      ),
      floatingActionButton: FloatingActionButton(
        child:Icon (Icons.add),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=>NewPlasmaReq()));
        },
      ),
    );
  }
}