import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MobileData extends StatefulWidget {
  @override
  _MobileDataState createState() => _MobileDataState();
}

final CollectionReference _productref =
    FirebaseFirestore.instance.collection("Mobiles");

class _MobileDataState extends State<MobileData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Stack(
        children: [
          FutureBuilder<QuerySnapshot>(
              future: _productref.get(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Scaffold(
                    body: Center(
                      child: Text("Error : ${snapshot.error}"),
                    ),
                  );
                }
                if (snapshot.connectionState == ConnectionState.done) {
                  return ListView(
                    children: snapshot.data!.docs.map((document) {
                      return Container(
                        child: Text("desc : ${document.data()['decs']}"),
                      );
                    }).toList(),
                  );
                }
                return Center(child: CircularProgressIndicator());
              })
        ],
      ),
    ));
  }
}
