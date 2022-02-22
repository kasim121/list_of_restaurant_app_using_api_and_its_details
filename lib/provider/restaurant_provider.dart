import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:restaurant_app/model/restaurant_model.dart';
import 'package:restaurant_app/utils/base_url.dart';

import 'package:http/http.dart' as http;

class RestaurantProvider extends ChangeNotifier {
  bool loading = false;

  List<RestaurantModel>? restaurantList  = [];

  enableLoading() {
    loading = true;
    notifyListeners();
  }

  disableLoading() {
    loading = false;
    notifyListeners();
  }

  Future<bool> getRestaurant() async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // String? token = prefs.getString("token");

    String url = BaseUrl.url;

    try {
      var response = await http
          .get(Uri.parse(url), headers: { 'AndroidPhone': 'EV6FTlgBhOalM+qjJpr2OZpAEpPkYJHC5I1aOWyeLevwSIpuzyKEAg==',
  'Cookie': 'ARRAffinity=cbd60842921e5344c4b1256b5bf7a8463000fa2622796e39c689fb0fa23b2648'});
      if (response.statusCode == 200 || response.statusCode == 201) {
        var jsonObject = json.decode(response.body);
        // ignore: avoid_print
        print("____________________${jsonObject}__________________");
         restaurantList = restaurantModelFromJson(jsonObject['AllRestaurantDishes']);
         // ignore: avoid_print
         print("____________________${restaurantList}__________________");
    
        disableLoading();
        return true;
      } else if (response.statusCode > 0) {
        disableLoading();

        return false;
      } else {
        disableLoading();

        return false;
      }
    } on SocketException catch (e) {
      // ignore: avoid_print
      print(e.message);
      disableLoading();
      // ignore: avoid_print
      print("TRENDING:PROVIDER::ERROR:0::$e");

      return false;
    }
  }

}

