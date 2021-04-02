import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:uireworked_linkedin/Models/PostDataModel.dart';

class PostDataProvider {
  static RxList<dynamic> postData = [].obs;

  static Future<void> fetchPostData() async {
    final url = Uri.https('jsonplaceholder.typicode.com', '/photos');
    final response = await http.get(url);
    final List<PostDataModel> fetchedDataList = [];

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      print(jsonData);
      for (Map i in jsonData) {
        fetchedDataList.add(PostDataModel.fromJson(i));
      }
      postData.value = fetchedDataList;
      return;
    }
  }
}
