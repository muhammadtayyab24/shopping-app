import 'package:flutter/material.dart';
import 'package:shopping/screens/authentication/login.dart';
import 'package:shopping/screens/authentication/signup.dart';
import 'package:shopping/screens/constant.dart';
import 'package:shopping/widgets/button.dart';

class LoginSignUp extends StatelessWidget {
  const LoginSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "First You Need TO \n SIGNIN / SIGNUP",
              textAlign: TextAlign.center,
              style: Constant.BoldHeading,
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomBtn(
                      text: "Sign In",
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Signin()));
                      }),
                  CustomBtn(
                      text: "Sign Up",
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Signup()));
                      })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
