import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:furniture_app/models/categories.dart';
import 'package:http/http.dart' as http;

Future<List<Categories>> fetchCategory() async {
  const String apiUrl =
      "https://5f210aa9daa42f001666535e.mockapi.io/api/categories";
  final response = await http.get(apiUrl);

  if (response.statusCode == 200) {
    List<Categories> categories = (json.decode(response.body) as List)
        .map((data) => Categories.fromJson(data))
        .toList();

    return categories;
  } else {
    throw Exception("Failed to load");
  }
}
