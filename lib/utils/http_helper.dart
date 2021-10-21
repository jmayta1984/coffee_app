// ignore_for_file: non_constant_identifier_names, avoid_print

import 'dart:convert';
import 'dart:io';
import 'package:coffee_app/models/coffee.dart';
import 'package:http/http.dart' as http;

class HttpHelper {
  Future<List> fetchCoffees() async {
    String urlString =
        'https://upc-pre-202101-si672-final.herokuapp.com/coffees';
    Uri url = Uri.parse(urlString);

    http.Response response = await http.get(url);

    if (response.statusCode == HttpStatus.ok) {
      final jsonResponse = json.decode(response.body);
      List coffees = jsonResponse.map((map) => Coffee.fromJson(map)).toList();
      return coffees;
    }

    return [];
  }
}
