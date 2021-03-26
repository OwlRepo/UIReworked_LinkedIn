import 'package:flutter/material.dart';
import 'package:uireworked_linkedin/Widgets/HomeScreen/HomeTabWidgets/HomeTabFeedContainer.dart';
import 'package:uireworked_linkedin/Widgets/HomeScreen/HomeTabWidgets/HomeTabHeader.dart';
import 'package:uireworked_linkedin/Widgets/HomeScreen/HomeTabWidgets/HomeTabStories.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          HomeTabHeader(),
          Divider(
            height: 8.0,
            color: Colors.transparent,
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                HomeTabStories(),
                Divider(
                  color: Colors.transparent,
                ),
                HomeTabFeedContainer(
                  userName: 'LinkedIn',
                  postDescription: 'Description',
                  timeAndDate: '1h',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
