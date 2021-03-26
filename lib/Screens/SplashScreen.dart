import 'package:flutter/material.dart';
import 'package:uireworked_linkedin/Screens/LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/splashscreen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      Duration(seconds: 2),
      () => {Navigator.pushNamed(context, LoginScreen.routeName)},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * .15,
            width: MediaQuery.of(context).size.width * .15,
            child: Image.asset(
              'assets/images/splashlogo.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
