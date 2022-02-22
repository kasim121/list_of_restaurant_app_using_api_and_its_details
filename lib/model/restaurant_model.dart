
import 'dart:convert';


List<RestaurantModel> restaurantModelFromJson(var str) => 
List<RestaurantModel>.from(
  str.map((x) => RestaurantModel.fromJson(x)));

String restaurantModelToJson(List<RestaurantModel> data) =>
 json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class RestaurantModel {
    RestaurantModel({
        required this.restaurantId,
        required this.restaurantName,
        required this.restaurantDishId,
        required this.restaurantDishName,
        required this.locationName,
        required this.restaurantCity,
        required this.distance,
        required this.votes,
        required this.dishRank,
        required this.latitude,
        required this.longitude,
         this.dishImage,
        required this.promoFlag,
        required this.fmUsers,
        required this.noOfCoupons,
        required this.totalPledge,
        required this.dishType,
        required this.friends,
        required this.dishSequence,
        required this.cuisines,
        required this.accountId,
        required this.chainOfRest,
    });

    int restaurantId;
    String restaurantName;
    int restaurantDishId;
    String restaurantDishName;
    String locationName;
    String restaurantCity;
    double distance;
    int votes;
    int dishRank;
    String latitude;
    String longitude;
    String? dishImage;
    int promoFlag;
    int fmUsers;
    int noOfCoupons;
    int totalPledge;
    int dishType;
    int friends;
    int dishSequence;
    String cuisines;
    int accountId;
    int chainOfRest;

    factory RestaurantModel.fromJson(Map<String, dynamic> json) => RestaurantModel(
        restaurantId: json["RestaurantId"],
        restaurantName: json["RestaurantName"],
        restaurantDishId: json["RestaurantDishId"],
        restaurantDishName: json["RestaurantDishName"],
        locationName: json["LocationName"],
        restaurantCity: json["RestaurantCity"],
        distance: json["Distance"].toDouble(),
        votes: json["Votes"],
        dishRank: json["DishRank"],
        latitude: json["Latitude"],
        longitude: json["Longitude"],
        dishImage: json["DishImage"] != null
            ? "http://fmtest.dishco.com/shawmanservices/api/RestaurantDetailsByFilter/GetFunPubRestaurantDetailsByFilter?StrLocLatitude=19.1105765&StrLocLongitude=73.0174654&StrLocCityName=Navi Mumbai&IntLocOrderby=1&IntLocNoOfRecords=0" + json["DishImage"]
            : null,
        promoFlag: json["PromoFlag"],
        fmUsers: json["FmUsers"],
        noOfCoupons: json["NoOfCoupons"],
        totalPledge: json["TotalPledge"],
        dishType: json["DishType"],
        friends: json["Friends"],
        dishSequence: json["DishSequence"],
        cuisines: json["Cuisines"],
        accountId: json["AccountId"],
        chainOfRest: json["ChainOfRest"],
    );

  bool? get isEmpty => null;

    Map<String, dynamic> toJson() => {
        "RestaurantId": restaurantId,
        "RestaurantName": restaurantName,
        "RestaurantDishId": restaurantDishId,
        "RestaurantDishName": restaurantDishName,
        "LocationName": locationName,
        "RestaurantCity": restaurantCity,
        "Distance": distance,
        "Votes": votes,
        "DishRank": dishRank,
        "Latitude": latitude,
        "Longitude": longitude,
        "DishImage": dishImage,
        "PromoFlag": promoFlag,
        "FmUsers": fmUsers,
        "NoOfCoupons": noOfCoupons,
        "TotalPledge": totalPledge,
        "DishType": dishType,
        "Friends": friends,
        "DishSequence": dishSequence,
        "Cuisines": cuisines,
        "AccountId": accountId,
        "ChainOfRest": chainOfRest,
    };
}
