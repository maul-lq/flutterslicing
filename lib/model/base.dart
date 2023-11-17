import 'dart:convert';

import 'package:http/http.dart' as http;

var baseURL = "restaurant-api.dicoding.dev";
var imageSmallURL ="https://restaurant-api.dicoding.dev/images/small/";
var imageLargeURL ="https://restaurant-api.dicoding.dev/images/large/";

class Restaurant {
  String id;
  String name;
  String description;
  String pictureId;
  String city;
  String rating;

  Restaurant(
      {
      required this.id,
      required this.name,
      required this.description,
      required this.pictureId,
      required this.city,
      required this.rating});

  factory Restaurant.createGetListRestaurant(Map<String, dynamic> objek) {
    return Restaurant(
      id: objek['id'],
      name: objek['name'],
      description: objek['description'],
      pictureId: objek['pictureId'],
      city: objek['city'],
      rating: objek['rating'].toString()
    );
  }

  static Future<List<Restaurant>?> connAPIRestaurant() async {
    var apiResult = await http.get(Uri.https(baseURL, '/list'));
    var jsonObject = json.decode(apiResult.body);
    List<dynamic> listRestaurant = jsonObject['restaurants'];
    List<Restaurant> restaurant = [];
    for (var element in listRestaurant) {
      restaurant.add(Restaurant.createGetListRestaurant(element));
    }
    return restaurant;
  }
}