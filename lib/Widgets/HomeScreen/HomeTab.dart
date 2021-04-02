import 'package:flutter/material.dart';
import 'package:uireworked_linkedin/Providers/PostDataProvider.dart';
import 'package:uireworked_linkedin/Widgets/HomeScreen/HomeTabWidgets/HomeTabFeedContainer.dart';
import 'package:uireworked_linkedin/Widgets/HomeScreen/HomeTabWidgets/HomeTabHeader.dart';
import 'package:uireworked_linkedin/Widgets/HomeScreen/HomeTabWidgets/HomeTabStories.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  var _isLoading = false;
  @override
  void initState() {
    super.initState();
    setState(() {
      _isLoading = true;
    });
    PostDataProvider.fetchPostData().then((value) {
      return setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
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
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _isLoading
                      ? CircularProgressIndicator()
                      : Expanded(
                          child: RefreshIndicator(
                            onRefresh: () {
                              setState(() {
                                _isLoading = true;
                              });
                              return PostDataProvider.fetchPostData()
                                  .then((value) {
                                return setState(() {
                                  _isLoading = false;
                                });
                              });
                            },
                            child: ListView.builder(
                              itemCount: PostDataProvider.postData.length,
                              itemBuilder: (context, index) {
                                return index == 0
                                    ? HomeTabStories()
                                    : HomeTabFeedContainer(
                                        postDescription: PostDataProvider
                                            .postData[index].title,
                                        postImageUrl: PostDataProvider
                                            .postData[index].url,
                                        userPicture: PostDataProvider
                                            .postData[index].thumbnailUrl,
                                        timeAndDate: '1h',
                                        userName: 'LinkedIn Account #$index',
                                      );
                              },
                            ),
                          ),
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
