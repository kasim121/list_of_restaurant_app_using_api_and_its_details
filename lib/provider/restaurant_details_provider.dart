import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:restaurant_app/model/restaurant_details_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:http/http.dart' as http;

class RestaurantDetailsProvider extends ChangeNotifier {
  bool loading = false;

  RestaurantDetailsModel? restaurantDetailsModel;

  enableLoading() {
    loading = true;
    notifyListeners();
  }

  disableLoading() {
    loading = false;
    notifyListeners();
  }

  Future<dynamic> getRestaurantDetails(String? id, lati, longi) async {
    String url =
        "http://fmtest.dishco.com/shawmanservices/api/SingleRestaurantDetails/GetFuncPubGetSingleRestaurantDetails?IntLocRestaurantId=$id&StrLocLatitude=$lati&StrLocLongitude=$longi";

    try {
      var response = await http.get(Uri.parse(url), headers: {
        'AndroidPhone':
            'EV6FTlgBhOalM+qjJpr2OZpAEpPkYJHC5I1aOWyeLevwSIpuzyKEAg==',
             'Cookie': 'ARRAffinity=cbd60842921e5344c4b1256b5bf7a8463000fa2622796e39c689fb0fa23b2648'
      });
      if (response.statusCode == 200 || response.statusCode == 201) {
        var jsonObject = json.decode(response.body);

        restaurantDetailsModel = restaurantDetailsModelFromJson(jsonObject);
        print(
            "____________________${restaurantDetailsModel!.restaurantName}__________________");

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
      print(e.message);
      disableLoading();
      print("TRENDING:PROVIDER::ERROR:0::$e");

      return false;
    }
  }
}

