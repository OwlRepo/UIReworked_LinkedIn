import 'package:flutter/material.dart';
import 'package:uireworked_linkedin/Widgets/LoginScreen/LoginForm.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 100.0,
                  ),
                  child: Container(
                    child: Image.asset(
                      'assets/images/loginlogo.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                LoginForm(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 1.0,
                  ),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text('Forgot Password?'),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text('Create an Account?'),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
