import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covidreq/Database_services/Database_services.dart';
import 'package:flutter/material.dart';

class NewMedicineReq extends StatefulWidget {
  @override
  _NewMedicineReqState createState() => _NewMedicineReqState();
}

class _NewMedicineReqState extends State<NewMedicineReq> {
  CollectionReference medicine =
      FirebaseFirestore.instance.collection('Medicine');

  String iDate, iName, iRequirement, iAddress, iPincode, iPhoneNumber;

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _iDateController = TextEditingController();
  final TextEditingController _iNameController = TextEditingController();
  final TextEditingController _iRequirementController = TextEditingController();
  final TextEditingController _iAddressController = TextEditingController();
  final TextEditingController _iPincodeController = TextEditingController();
  final TextEditingController _iPhoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("New Medicine Requirement"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Column(
              children: [
                SizedBox(
                  height: size.height / 10,
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        onSaved: (value) {
                          iDate = value;
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        controller: _iDateController,
                        decoration: InputDecoration(
                          hintText: "Date",
                          prefixIcon: Icon(Icons.date_range),
                        ),
                      ),
                      TextFormField(
                        onSaved: (value) {
                          iName = value;
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        controller: _iNameController,
                        decoration: InputDecoration(
                          hintText: "Name",
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                      TextFormField(
                        onSaved: (value) {
                          iRequirement = value;
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        controller: _iRequirementController,
                        decoration: InputDecoration(
                          hintText: "Requirement",
                          prefixIcon: Icon(Icons.label),
                        ),
                      ),
                      TextFormField(
                        onSaved: (value) {
                          iAddress = value;
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        
                        controller: _iAddressController,
                        decoration: InputDecoration(
                          hintText: "Address",
                          prefixIcon: Icon(Icons.edit),
                        ),
                      ),
                      TextFormField(
                        
                        onSaved: (value) {
                          iPincode = value;
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },

                        controller: _iPincodeController,
                        decoration: InputDecoration(
                          hintText: "Pincode",
                          prefixIcon: Icon(Icons.email),
                        ),
                      ),
                      TextFormField(
                        onSaved: (value) {
                          iPhoneNumber = value;
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        controller: _iPhoneNumberController,
                        decoration: InputDecoration(
                          hintText: "Phone Number",
                          prefixIcon: Icon(Icons.phone),
                        ),
                      ),
                      SizedBox(
                        height: size.height / 15,
                      ),
                      ElevatedButton(
                        child: Text("Add"),
                        onPressed: () async {

                            validateAndSave();

                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
 

  validateAndSave() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      print("DATABASE: "+"$iName, $iAddress, $iPhoneNumber, $iPincode, $iRequirement, $iDate");
      Database_services _db = new Database_services();

      _db.addMedicineToFB(
          iName, iAddress, iPhoneNumber, iPincode, iRequirement);
      final added = SnackBar(
        content: Text('Adding Medicine Requirement'),
      );
      ScaffoldMessenger.of(context).showSnackBar(added);
      Navigator.pop(context);

      return true;
    } else {
      print("Form invalid");
      return false;
    }
  }
}
