import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:uireworked_linkedin/Screens/HomeScreen.dart';
import 'package:uireworked_linkedin/Screens/LoginScreen.dart';
import 'package:uireworked_linkedin/Screens/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    precacheImage(AssetImage('assets/images/loginlogo.png'), context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LinkedIn',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: SplashScreen.routeName,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case SplashScreen.routeName:
            return PageTransition(
              child: SplashScreen(),
              type: PageTransitionType.fade,
            );
            break;
          case LoginScreen.routeName:
            return PageTransition(
              child: LoginScreen(),
              type: PageTransitionType.fade,
            );
            break;
          case HomeScreen.routeName:
            return PageTransition(
              child: HomeScreen(),
              type: PageTransitionType.fade,
            );
            break;
        }
      },
    );
  }
}
