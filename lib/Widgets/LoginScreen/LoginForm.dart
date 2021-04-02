import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uireworked_linkedin/Screens/HomeScreen.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
        vertical: 20.0,
      ),
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Welcome!',
              style: GoogleFonts.roboto(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'Please login to continue!',
              style: GoogleFonts.roboto(
                fontSize: 10.0,
                color: Colors.white,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(hintText: 'Email'),
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Password',
              ),
              obscureText: true,
              textInputAction: TextInputAction.done,
            ),
            Divider(
              color: Colors.transparent,
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(HomeScreen.routeName);
              },
              child: Text(
                'LOGIN',
                style: GoogleFonts.montserrat(
                  fontSize: 15.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
