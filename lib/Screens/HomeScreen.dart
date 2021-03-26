import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:uireworked_linkedin/Widgets/HomeScreen/HomeTab.dart';
import 'package:uireworked_linkedin/Widgets/HomeScreen/JobsTab.dart';
import 'package:uireworked_linkedin/Widgets/HomeScreen/MessageTab.dart';
import 'package:uireworked_linkedin/Widgets/HomeScreen/NetworkTab.dart';
import 'package:uireworked_linkedin/Widgets/HomeScreen/PostTab.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/feed';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final tabs = [
    HomeTab(),
    NetworkTab(),
    PostTab(),
    MessageTab(),
    JobsTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icons.home_rounded, title: 'Home'),
          TabItem(icon: Icons.people_alt_rounded, title: 'Network'),
          TabItem(icon: Icons.add_box, title: 'Post'),
          TabItem(icon: Icons.messenger, title: 'Message'),
          TabItem(icon: Icons.work, title: 'Jobs'),
        ],
        initialActiveIndex: 0,
        onTap: (int i) {
          this.setState(() {
            _currentIndex = i;
          });
        },
      ),
      body: SafeArea(
        child: tabs[_currentIndex],
      ),
    );
  }
}
