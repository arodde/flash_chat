import 'package:flutter/material.dart';
import 'package:flash_chat/components/rounded_button.dart';

import '../constants.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: SizedBox(
                child: Image.asset('images/logo.png'),
                height: 200.0,
              ),
            ),
            // Container(
            //   height: 200.0,
            //   child: Image.asset('images/logo.png'),
            // ),
            const SizedBox(
              height: 48.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,

              // style: TextStyle(
              //   color: Colors.orangeAccent,
              // ),
              onChanged: (value) {
                email = value;
              },
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Enter your email'),
            ),
            // TextField(
            //   onChanged: (value) {
            //     //Do something with the user input.
            //   },
            //   decoration: InputDecoration(
            //     hintText: 'Enter your email',
            //     contentPadding:
            //         EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.all(Radius.circular(32.0)),
            //     ),
            //     enabledBorder: OutlineInputBorder(
            //       borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
            //       borderRadius: BorderRadius.all(Radius.circular(32.0)),
            //     ),
            //     focusedBorder: OutlineInputBorder(
            //       borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
            //       borderRadius: BorderRadius.all(Radius.circular(32.0)),
            //     ),
            //   ),
            // ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              obscureText: true,
              // style: TextStyle(
              //   backgroundColor: Colors.purple,
              //   color: Colors.orangeAccent,
              // ),
              onChanged: (value) {
                password = value;
              },
              decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Enter your password'),
            ),
            // TextField(
            //   onChanged: (value) {
            //     //Do something with the user input.
            //   },
            //   decoration: InputDecoration(
            //     hintText: 'Enter your password',
            //     contentPadding:
            //         EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.all(Radius.circular(32.0)),
            //     ),
            //     enabledBorder: OutlineInputBorder(
            //       borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
            //       borderRadius: BorderRadius.all(Radius.circular(32.0)),
            //     ),
            //     focusedBorder: OutlineInputBorder(
            //       borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
            //       borderRadius: BorderRadius.all(Radius.circular(32.0)),
            //     ),
            //   ),
            // ),
            const SizedBox(
              height: 24.0,
            ),

            RoundedButton(
              title: 'Register',
              color: Colors.blueAccent,
              onPressed: () {
                //Implement registration functionality.
                print("dans registration screen");
                print('email $email');
                print('password $password');
              },
            ),
          ],
        ),
      ),
    );
  }
}
