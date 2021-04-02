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
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(widget.postDescription),
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
