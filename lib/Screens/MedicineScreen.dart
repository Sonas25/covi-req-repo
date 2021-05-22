import 'package:covidreq/Screens/NewMedicineReq.dart';
import 'package:flutter/material.dart';

class MedicineScreen extends StatefulWidget {
  @override
  _MedicineScreenState createState() => _MedicineScreenState();
}

class _MedicineScreenState extends State<MedicineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Medicine"),
      ),
      floatingActionButton: FloatingActionButton(
        child:Icon (Icons.add),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=>NewMedicineReq()));
        },
      ),
    );
  }
}