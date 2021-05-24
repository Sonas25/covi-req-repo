import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

// ignore: camel_case_types
class Database_services {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  // ignore: unused_field
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> addMedicineToFB(
    String iName,
    String iRequirement,
    String iAddress,
    String iPincode,
    String iPhoneNumber,
  ) async {
    CollectionReference medicine =
        FirebaseFirestore.instance.collection("Medicine");

    await medicine.add({
      "Date": DateTime.now(),
      "Name": iName,
      "Requirement": iRequirement,
      "Address": iAddress,
      "Pincode": iPincode,
      "PhoneNumber": iPhoneNumber,
    }).then((value) => print("data added"));
  }

  Future<void> addTiffinToFB(
    String iName,
    String iRequirement,
    String iAddress,
    String iPincode,
    String iPhoneNumber,
  ) async {
    CollectionReference tiffin =
        FirebaseFirestore.instance.collection("Tiffin");

    await tiffin.add({
      "Date": DateTime.now(),
      "Name": iName,
      "Requirement": iRequirement,
      "Address": iAddress,
      "Pincode": iPincode,
      "PhoneNumber": iPhoneNumber,
    }).then((value) => print("data added"));
  }

  Future<void> addAmbulanceToFB(
    String iName,
    String iRequirement,
    String iAddress,
    String iPincode,
    String iPhoneNumber,
  ) async {
    CollectionReference ambulance =
        FirebaseFirestore.instance.collection("Ambulance");

    await ambulance.add({
      "Date": DateTime.now(),
      "Name": iName,
      "Requirement": iRequirement,
      "Address": iAddress,
      "Pincode": iPincode,
      "PhoneNumber": iPhoneNumber,
    }).then((value) => print("data added"));
  }

  Future<void> addOxygenToFB(
      String iName,
      String iRequirement,
      String iAddress,
      String iPincode,
      String iPhoneNumber,
      ) async {
    CollectionReference oxygen =
    FirebaseFirestore.instance.collection("Oxygen");

    await oxygen.add({
      "Date": DateTime.now(),
      "Name": iName,
      "Requirement": iRequirement,
      "Address": iAddress,
      "Pincode": iPincode,
      "PhoneNumber": iPhoneNumber,
    }).then((value) => print("data added"));
  }

Future<void> addPlasmaToFB(
    String iName,
    String iRequirement,
    String iAddress,
    String iPincode,
    String iPhoneNumber,
  ) async {
    CollectionReference plasma =
        FirebaseFirestore.instance.collection("Plasma");

    await plasma.add({
      "Date": DateTime.now(),
      "Name": iName,
      "Requirement": iRequirement,
      "Address": iAddress,
      "Pincode": iPincode,
      "PhoneNumber": iPhoneNumber,
    }).then((value) => print("data added"));
  }
  
}