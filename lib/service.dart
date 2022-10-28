import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:nested/model.dart';

class groupService {
  Future<List<GroupModel>> getGroup() async {
    http.Response response;
    Uri url = Uri.parse(
        "http://dev.amaderacademy.com/test-api/api/categories/20/subcategoriesbygroup?PageNumber=1&PageSize=20&Level=12");

    response = await http.get(
      url,
    );
    print(response.body);
    return groupModelFromJson(response.body);
  }
}
