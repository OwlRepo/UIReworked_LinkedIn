import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
    super.initState();
    precacheImage(AssetImage('assets/images/loginlogo.png'), context);
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'LinkedIn',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: SplashScreen.routeName,
      getPages: [
        GetPage(
          name: SplashScreen.routeName,
          page: () => SplashScreen(),
        ),
        GetPage(
          name: LoginScreen.routeName,
          page: () => LoginScreen(),
          transition: Transition.fade,
        ),
        GetPage(
          name: HomeScreen.routeName,
          page: () => HomeScreen(),
          transition: Transition.downToUp,
          transitionDuration: Duration(milliseconds: 200),
        ),
      ],
    );
  }
}
