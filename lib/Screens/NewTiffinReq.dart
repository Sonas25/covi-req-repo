import 'package:flutter/material.dart';

class NewTiffinReq extends StatefulWidget {
  @override
  _NewTiffinReqState createState() => _NewTiffinReqState();
}

class _NewTiffinReqState extends State<NewTiffinReq> {
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
                  TextField(
                    onChanged: (value) {
                      iDate = value;
                    },
                    controller: _iDateController,
                    decoration: InputDecoration(
                      hintText: "Date",
                      prefixIcon: Icon(Icons.date_range),
                    ),
                  ),
                  TextField(
                    onChanged: (value) {
                      iName = value;
                    },
                    controller: _iNameController,
                    decoration: InputDecoration(
                      hintText: "Name",
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  TextField(
                    onChanged: (value) {
                      iRequirement = value;
                    },
                    controller: _iRequirementController,
                    decoration: InputDecoration(
                      hintText: "Requirement",
                      prefixIcon: Icon(Icons.label),
                    ),
                  ),
                  TextField(
                    onChanged: (value) {
                      iAddress = value;
                    },
                    controller: _iAddressController,
                    decoration: InputDecoration(
                      hintText: "Address",
                      prefixIcon: Icon(Icons.edit),
                    ),
                  ),
                  TextField(
                    onChanged: (value) {
                      iPincode = value;
                    },
                    controller: _iPincodeController,
                    decoration: InputDecoration(
                      hintText: "Pincode",
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                  TextField(
                    onChanged: (value) {
                      iPhoneNumber = value;
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
                    onPressed:(){},
                  ) ,
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
}