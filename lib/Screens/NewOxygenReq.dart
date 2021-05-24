import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covidreq/Database_services/Database_services.dart';

class NewOxygenReq extends StatefulWidget {
  @override
  _NewOxygenReqState createState() => _NewOxygenReqState();
}

class _NewOxygenReqState extends State<NewOxygenReq> {
  CollectionReference oxygen =
  FirebaseFirestore.instance.collection('Oxygen');

  String iName, iRequirement, iAddress, iPincode, iPhoneNumber;

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _iNameController = TextEditingController();
  final TextEditingController _iRequirementController = TextEditingController();
  final TextEditingController _iAddressController = TextEditingController();
  final TextEditingController _iPincodeController = TextEditingController();
  final TextEditingController _iPhoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        title: Text(
          "New Oxygen Requirement",
          style: TextStyle(
            fontFamily: 'Pattaya',
            fontSize: 25,
          ),
        ),
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
                        style: TextStyle(color: Colors.grey[300]),
                        cursorColor: Colors.green[700],
                        onSaved: (value) {
                          iName = value;
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter your Full Name';
                          }
                          return null;
                        },
                        controller: _iNameController,
                        decoration: InputDecoration(
                          hintText: "Name",
                          hintStyle: TextStyle(color: Colors.grey[700]),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green[700],
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green[700],
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      TextFormField(
                        style: TextStyle(color: Colors.grey[300]),
                        cursorColor: Colors.green[700],
                        onSaved: (value) {
                          iRequirement = value;
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter your Requirements';
                          }
                          return null;
                        },
                        controller: _iRequirementController,
                        decoration: InputDecoration(
                          hintText: "Requirement",
                          hintStyle: TextStyle(color: Colors.grey[700]),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green[700],
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green[700],
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.label,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      TextFormField(
                        style: TextStyle(color: Colors.grey[300]),
                        cursorColor: Colors.green[700],
                        onSaved: (value) {
                          iAddress = value;
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter your Address';
                          }
                          return null;
                        },
                        controller: _iAddressController,
                        decoration: InputDecoration(
                          hintText: "Address",
                          hintStyle: TextStyle(color: Colors.grey[700]),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green[700],
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green[700],
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.edit,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      TextFormField(
                        style: TextStyle(color: Colors.grey[300]),
                        cursorColor: Colors.green[700],
                        onSaved: (value) {
                          iPincode = value;
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter your Pin Code';
                          }
                          return null;
                        },
                        controller: _iPincodeController,
                        decoration: InputDecoration(
                          hintText: "Pincode",
                          hintStyle: TextStyle(color: Colors.grey[700]),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green[700],
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green[700],
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.pin_drop_outlined,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      TextFormField(
                        style: TextStyle(color: Colors.grey[300]),
                        cursorColor: Colors.green[700],
                        onSaved: (value) {
                          iPhoneNumber = value;
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter your Phone Number';
                          }
                          return null;
                        },
                        controller: _iPhoneNumberController,
                        decoration: InputDecoration(
                          hintText: "Phone Number",
                          hintStyle: TextStyle(color: Colors.grey[700]),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green[700],
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green[700],
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.phone,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height / 15,
                      ),
                      Container(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green[700],
                          ),
                          child: Text("Add"),
                          onPressed: () async {
                            validateAndSave();
                          },
                        ),
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
      print("DATABASE: " +
          "$iName, $iRequirement, $iAddress, $iPincode, $iPhoneNumber");
      Database_services _db = new Database_services();

      _db.addOxygenToFB(
          iName, iRequirement, iAddress, iPincode, iPhoneNumber);
      final added = SnackBar(
        content: Text('Adding Oxygen Requirement'),
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