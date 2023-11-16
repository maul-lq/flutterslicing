import 'dart:convert';

import 'package:http/http.dart' as http;

var baseURL = "restaurant-api.dicoding.dev";
var imageSmallURL ="https://restaurant-api.dicoding.dev/images/small/";
var imageLargeURL ="https://restaurant-api.dicoding.dev/images/large/";

class Restaurant {
  String? id;
  String? name;
  String? description;
  String? pictureId;
  String? city;
  double? rating;

  Restaurant(
      {this.id,
      this.name,
      this.description,
      this.pictureId,
      this.city,
      this.rating});
}

class GetListRestaurant {
  bool isError;
  String message;
  int count;
  List<dynamic> restaurants;

  GetListRestaurant({
    required this.isError,
    required this.message,
    required this.count,
    required this.restaurants,
  });

  factory GetListRestaurant.createGetListRestaurant(
      Map<String, dynamic> object) {
    return GetListRestaurant(
        isError: object['error'],
        message: object['message'],
        count: object['count'],
        restaurants: object['restaurants']);
  }

  static Future<GetListRestaurant> connAPI() async {
    var result = await http.get(Uri.https(baseURL,"/list"));
    var jsonObject = json.decode(result.body);

    return GetListRestaurant.createGetListRestaurant(jsonObject);
  }
}
