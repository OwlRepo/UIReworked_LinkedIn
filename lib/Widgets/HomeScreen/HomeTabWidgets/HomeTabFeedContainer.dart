import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTabFeedContainer extends StatefulWidget {
  final String userName;
  final String userPicture;
  final String timeAndDate;
  final String postDescription;
  final String postImageUrl;
  HomeTabFeedContainer({
    this.userName,
    this.userPicture,
    this.timeAndDate,
    this.postDescription,
    this.postImageUrl,
  });

  @override
  _HomeTabFeedContainerState createState() => _HomeTabFeedContainerState();
}

class _HomeTabFeedContainerState extends State<HomeTabFeedContainer> {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 2.5,
      color: Colors.white,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  ClipOval(
                    child: SizedBox(
                      height: 40.0,
                      width: 40.0,
                      child: Image.network(
                        widget.userPicture,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.userName,
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            widget.timeAndDate,
                            style: GoogleFonts.roboto(
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.more_horiz),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  child: Text(widget.postDescription),
                ),
                Divider(
                  color: Colors.transparent,
                ),
                SizedBox(
                  child: Image.network(
                    widget.postImageUrl,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
