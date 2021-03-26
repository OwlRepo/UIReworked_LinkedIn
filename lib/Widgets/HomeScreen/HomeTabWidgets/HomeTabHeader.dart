import 'package:flutter/material.dart';

class HomeTabHeader extends StatefulWidget {
  @override
  _HomeTabHeaderState createState() => _HomeTabHeaderState();
}

class _HomeTabHeaderState extends State<HomeTabHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 5.0,
        )
      ]),
      padding: EdgeInsets.all(5.0),
      child: Row(
        children: [
          Tooltip(
            message: 'Profile',
            child: IconButton(
              splashColor: Theme.of(context).primaryColor,
              splashRadius: 20.0,
              iconSize: 35.0,
              color: Theme.of(context).primaryColor,
              icon: Icon(Icons.account_circle),
              onPressed: () {},
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                print('tapped');
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(100.0),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 5.0,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search_rounded,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.0,
                      ),
                    ),
                    Text(
                      'Tap here to search...',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Tooltip(
            message: 'Notifications',
            child: IconButton(
              splashColor: Theme.of(context).primaryColor,
              splashRadius: 20.0,
              iconSize: 35.0,
              color: Theme.of(context).primaryColor,
              icon: Icon(Icons.notifications_rounded),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
