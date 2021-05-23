import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Database_services {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> addMedicineToFB(String iName, String iAddress, String iPhoneNumber,
      String iPincode, String iRequirement) async {
    CollectionReference medicine =
        FirebaseFirestore.instance.collection("Mediciness");

    await medicine.add({
      "Date": DateTime.now(),
      "Name": iName,
      "Requirement": iRequirement,
      "Address": iAddress,
      "Pincode": iPincode,
      "PhoneNumber": iPhoneNumber,
    }).then((value) => print("data added"));



  }
}
