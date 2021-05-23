import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covidreq/Screens/NewMedicineReq.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MedicineScreen extends StatefulWidget {
  @override
  _MedicineScreenState createState() => _MedicineScreenState();
}

class _MedicineScreenState extends State<MedicineScreen> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Medicine"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => NewMedicineReq()));
        },
      ),

      //Start

      body: SafeArea(
        child: WillPopScope(
          onWillPop: () async {
            SystemNavigator.pop();
            return false;
          },
          child: StreamBuilder<QuerySnapshot>(
              stream: firestore.collection("Medicine").snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (!snapshot.hasData) {
                  return Container();
                } else {
                  return ListView(
                    shrinkWrap: true,
                    children:
                        snapshot.data.docs.map((DocumentSnapshot document) {
                      print("DOCUMENT SNAPSHOT: "+document.toString());
                      return Card(
                        color: Colors.white,
                        elevation: 20,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14.0)),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                document['Requirement'],
                                maxLines: 5,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Sans',
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                document['Name'],
                                maxLines: 5,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Sans',
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                document['Address'],
                                maxLines: 5,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Sans',
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                document['Pincode'],
                                maxLines: 5,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Sans',
                                    fontWeight: FontWeight.w500), 
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(                                    
                                    child: FloatingActionButton(
                                      child: Icon(Icons.call),
                                      onPressed: (){},
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                format_posted_time(document['Date'])
                                ,
                                maxLines: 5,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Sans',
                                    fontWeight: FontWeight.w500),
                              ),
                              
                            ],
                          ),
                          
                        ),
                      );
                    }).toList(),
                  );
                }
              }),
        ),
      ),

      //End
    );
  }

// ignore: non_constant_identifier_names
String format_posted_time(Timestamp postedTime) {
    DateTime postedDate =
        postedTime.toDate(); //Converted timestamp to DateTime

    bool numericDates = true;

    final date2 = DateTime.now();

    final difference = date2.difference(postedDate);

    if (difference.inDays > 8) {
      // ignore: todo
      return 'More than 8 days'; // TODO : Should change more than 8 days
    } else if ((difference.inDays / 7).floor() >= 1) {
      return (numericDates) ? '1 week ago' : 'Last week';
    } else if (difference.inDays >= 2) {
      return '${difference.inDays} days ago';
    } else if (difference.inDays >= 1) {
      return (numericDates) ? '1 day ago' : 'Yesterday';
    } else if (difference.inHours >= 2) {
      return '${difference.inHours} hours ago';
    } else if (difference.inHours >= 1) {
      return (numericDates) ? '1 hour ago' : 'An hour ago';
    } else if (difference.inMinutes >= 2) {
      return '${difference.inMinutes} minutes ago';
    } else if (difference.inMinutes >= 1) {
      return (numericDates) ? '1 minute ago' : 'A minute ago';
    } else if (difference.inSeconds >= 3) {
      return '${difference.inSeconds} seconds ago';
    } else {
      return 'Just now';
    }
  }


}
