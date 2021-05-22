import 'package:covidreq/Screens/NewTiffinReq.dart';
import 'package:flutter/material.dart';

class TiffinScreen extends StatefulWidget {
  @override
  _TiffinScreenState createState() => _TiffinScreenState();
}

class _TiffinScreenState extends State<TiffinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tiffin"),
      ),
      floatingActionButton: FloatingActionButton(
        child:Icon (Icons.add),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=>NewTiffinReq()));
        },
      ),
    );
  }
}