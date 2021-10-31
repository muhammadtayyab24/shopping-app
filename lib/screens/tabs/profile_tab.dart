import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:shopping/screens/authentication/login.dart';
import 'package:shopping/screens/profile_view.dart';

class ProflieTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, Snapshot) {
          if (Snapshot.hasError) {
            return Scaffold(
              body: Center(
                child: Text("Error : ${Snapshot.error}"),
              ),
            );
          }
          if (Snapshot.connectionState == ConnectionState.active) {
            Object? _user = Snapshot.data;
            if (_user == null) {
              return Signin();
            } else {
              return Profile();
            }
          }
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        });
  }
}
