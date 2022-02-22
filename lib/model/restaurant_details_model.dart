// To parse this JSON data, do
//
//     final restaurantDetailsModel = restaurantDetailsModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

RestaurantDetailsModel restaurantDetailsModelFromJson(var str) => 
RestaurantDetailsModel.fromJson(str);

String restaurantDetailsModelToJson(RestaurantDetailsModel data) => json.encode(data.toJson());

class RestaurantDetailsModel {
    RestaurantDetailsModel({
        required this.restaurantId,
        required this.restaurantName,
        required this.restaurantAddress,
        required this.location,
        required this.contactNumber,
        required this.votes,
        required this.rating,
        required this.openingsHours,
        required this.restaurantLogo,
        required this.avgMealRate,
        required this.botRestaurantId,
        required this.distance,
        required this.latitude,
        required this.longitude,
        required this.totalPledge,
        required this.promoDetails,
        required this.promoUrl,
        required this.promoImage,
        required this.restaurantFlag,
        required this.shareFlag,
        required this.feedbackFacility,
        required this.homeDelivery,
        required this.isClubAccount,
        required this.happyHoursFromTime,
        required this.happyHoursToTime,
        required this.menuImages,
        required this.crediteCards,
        required this.cuisines,
        required this.restaurantDishes,
        required this.customersPromos,
        required this.facilities,
        required this.touristDetails,
        required this.checkInStatus,
        required this.cityId,
        required this.cityName,
        required this.minOrder,
        required this.minTime,
        required this.accountId,
        required this.deliveryFromTime,
        required this.deliveryToTime,
        required this.groupId,
        required this.restaurantDetailMenuUser,
        required this.restaurantDetailMenuOwner,
        required this.restaurantImage,
        required this.weekTime,
        required this.restaurantMinOrderValue,
        required this.restaurantSafetyMeasure,
        required this.brandId,
        required this.brandDescription,
        required this.locationId,
        required this.locationName,
        required this.boolIsOlo,
        required this.boolIsEMenu,
        required this.boolIsJustOrder,
        required this.boolIsBill,
        required this.boolIsSettlement,
        required this.boolIsIrd,
        required this.minDeliveryTime,
        required this.homeDeliveryPickTime,
        required this.eveDeliveryFromTime,
        required this.eveDeliveryToTime,
        required this.covidText,
        required this.aboutRestaurantText,
        required this.ownedByText,
        required this.restaurantSafety,
        required this.restaurantMobileImage,
        required this.restaurantDesktopImage,
        required this.enableAdvanceOrder,
        required this.advanceOrderTimeSlotDuration,
        required this.enablePayBillOption,
        required this.enableFeedbackFacility,
        required this.maxAdvanceOrderDays,
        required this.isFreeFlowModifier,
        required this.homeDeliveryDistRange,
        required this.googleApiKey,
        required this.avgWineCost,
        required this.avgBeerCost,
        required this.shareText,
        required this.morningFromTime,
        required this.morningToTime,
        required this.eveningFromTime,
        required this.eveningToTime,
        required this.pickupTimeSlotDuration,
        required this.deliveryTimeSlotDuration,
        required this.enableJustOrderFeedbackFacility,
        required this.brandWiseRestaurantCount,
        required this.viewTypeFlag,
        required this.enableCopyLocation,
        required this.enableViewAllOutlet,
        required this.enableGetdirections,
        required this.restaurantShortDescription,
        required this.imageForOrder,
        required this.imageForDineIn,
        required this.imageForReserve,
        required this.imageForOffers,
        required this.isAllowModifierQuantity,
        required this.maxModifierQuantity,
        required this.emailAddress,
        required this.websiteLink,
        required this.enableCurrentDayAdvanceOrder,
        required this.restrictOffersInAdvanceOrder,
        required this.enableSpecialInstructions,
        required this.currencyText,
        required this.currencySymbol,
        required this.restaurantBlockTimes,
        required this.enabletablebooking,
    });

    int restaurantId;
    String restaurantName;
    String restaurantAddress;
    String location;
    String contactNumber;
    String votes;
    int rating;
    String openingsHours;
    String restaurantLogo;
    int avgMealRate;
    int botRestaurantId;
    int distance;
    String latitude;
    String longitude;
    int totalPledge;
    String promoDetails;
    String promoUrl;
    String promoImage;
    int restaurantFlag;
    int shareFlag;
    int feedbackFacility;
    int homeDelivery;
    int isClubAccount;
    String happyHoursFromTime;
    String happyHoursToTime;
    List<MenuImage> menuImages;
    List<dynamic> crediteCards;
    List<Cuisine> cuisines;
    List<RestaurantDish> restaurantDishes;
    List<dynamic> customersPromos;
    List<Facility> facilities;
    List<TouristDetail> touristDetails;
    CheckInStatus checkInStatus;
    int cityId;
    String cityName;
    String minOrder;
    String minTime;
    int accountId;
    String deliveryFromTime;
    String deliveryToTime;
    String groupId;
    List<RestaurantDetailMenu> restaurantDetailMenuUser;
    List<RestaurantDetailMenu> restaurantDetailMenuOwner;
    String restaurantImage;
    List<dynamic> weekTime;
    List<dynamic> restaurantMinOrderValue;
    List<dynamic> restaurantSafetyMeasure;
    int brandId;
    String brandDescription;
    int locationId;
    String locationName;
    bool boolIsOlo;
    bool boolIsEMenu;
    bool boolIsJustOrder;
    bool boolIsBill;
    bool boolIsSettlement;
    bool boolIsIrd;
    int minDeliveryTime;
    dynamic homeDeliveryPickTime;
    dynamic eveDeliveryFromTime;
    dynamic eveDeliveryToTime;
    String covidText;
    dynamic aboutRestaurantText;
    String ownedByText;
    String restaurantSafety;
    dynamic restaurantMobileImage;
    dynamic restaurantDesktopImage;
    bool enableAdvanceOrder;
    String advanceOrderTimeSlotDuration;
    bool enablePayBillOption;
    bool enableFeedbackFacility;
    int maxAdvanceOrderDays;
    int isFreeFlowModifier;
    int homeDeliveryDistRange;
    String googleApiKey;
    int avgWineCost;
    int avgBeerCost;
    dynamic shareText;
    String morningFromTime;
    String morningToTime;
    String eveningFromTime;
    String eveningToTime;
    dynamic pickupTimeSlotDuration;
    dynamic deliveryTimeSlotDuration;
    bool enableJustOrderFeedbackFacility;
    int brandWiseRestaurantCount;
    dynamic viewTypeFlag;
    bool enableCopyLocation;
    bool enableViewAllOutlet;
    bool enableGetdirections;
    dynamic restaurantShortDescription;
    dynamic imageForOrder;
    dynamic imageForDineIn;
    dynamic imageForReserve;
    dynamic imageForOffers;
    bool isAllowModifierQuantity;
    int maxModifierQuantity;
    String emailAddress;
    String websiteLink;
    bool enableCurrentDayAdvanceOrder;
    bool restrictOffersInAdvanceOrder;
    bool enableSpecialInstructions;
    String currencyText;
    String currencySymbol;
    RestaurantBlockTimes restaurantBlockTimes;
    bool enabletablebooking;

    factory RestaurantDetailsModel.fromJson(Map<String, dynamic> json) => RestaurantDetailsModel(
        restaurantId: json["RestaurantID"],
        restaurantName: json["RestaurantName"],
        restaurantAddress: json["RestaurantAddress"],
        location: json["Location"],
        contactNumber: json["ContactNumber"],
        votes: json["Votes"],
        rating: json["Rating"],
        openingsHours: json["OpeningsHours"],
        restaurantLogo: json["RestaurantLogo"],
        avgMealRate: json["AvgMealRate"],
        botRestaurantId: json["BOTRestaurantId"],
        distance: json["Distance"],
        latitude: json["Latitude"],
        longitude: json["Longitude"],
        totalPledge: json["TotalPledge"],
        promoDetails: json["PromoDetails"],
        promoUrl: json["PromoURL"],
        promoImage: json["PromoImage"],
        restaurantFlag: json["RestaurantFlag"],
        shareFlag: json["ShareFlag"],
        feedbackFacility: json["FeedbackFacility"],
        homeDelivery: json["HomeDelivery"],
        isClubAccount: json["IsClubAccount"],
        happyHoursFromTime: json["HappyHoursFromTime"],
        happyHoursToTime: json["HappyHoursToTime"],
        menuImages: List<MenuImage>.from(json["MenuImages"].map((x) => MenuImage.fromJson(x))),
        crediteCards: List<dynamic>.from(json["CrediteCards"].map((x) => x)),
        cuisines: List<Cuisine>.from(json["Cuisines"].map((x) => Cuisine.fromJson(x))),
        restaurantDishes: List<RestaurantDish>.from(json["RestaurantDishes"].map((x) => RestaurantDish.fromJson(x))),
        customersPromos: List<dynamic>.from(json["CustomersPromos"].map((x) => x)),
        facilities: List<Facility>.from(json["Facilities"].map((x) => Facility.fromJson(x))),
        touristDetails: List<TouristDetail>.from(json["TouristDetails"].map((x) => TouristDetail.fromJson(x))),
        checkInStatus: CheckInStatus.fromJson(json["CheckInStatus"]),
        cityId: json["CityId"],
        cityName: json["CityName"],
        minOrder: json["MinOrder"],
        minTime: json["MinTime"],
        accountId: json["AccountId"],
        deliveryFromTime: json["DeliveryFromTime"],
        deliveryToTime: json["DeliveryToTime"],
        groupId: json["GroupId"],
        restaurantDetailMenuUser: List<RestaurantDetailMenu>.from(json["RestaurantDetailMenuUser"].map((x) => RestaurantDetailMenu.fromJson(x))),
        restaurantDetailMenuOwner: List<RestaurantDetailMenu>.from(json["RestaurantDetailMenuOwner"].map((x) => RestaurantDetailMenu.fromJson(x))),
        restaurantImage: json["RestaurantImage"],
        weekTime: List<dynamic>.from(json["WeekTime"].map((x) => x)),
        restaurantMinOrderValue: List<dynamic>.from(json["RestaurantMinOrderValue"].map((x) => x)),
        restaurantSafetyMeasure: List<dynamic>.from(json["RestaurantSafetyMeasure"].map((x) => x)),
        brandId: json["BrandId"],
        brandDescription: json["BrandDescription"],
        locationId: json["LocationId"],
        locationName: json["LocationName"],
        boolIsOlo: json["BoolIsOLO"],
        boolIsEMenu: json["BoolIsEMenu"],
        boolIsJustOrder: json["BoolIsJustOrder"],
        boolIsBill: json["BoolIsBill"],
        boolIsSettlement: json["BoolIsSettlement"],
        boolIsIrd: json["BoolIsIRD"],
        minDeliveryTime: json["MinDeliveryTime"],
        homeDeliveryPickTime: json["HomeDeliveryPickTime"],
        eveDeliveryFromTime: json["EveDeliveryFromTime"],
        eveDeliveryToTime: json["EveDeliveryToTime"],
        covidText: json["COVIDText"],
        aboutRestaurantText: json["AboutRestaurantText"],
        ownedByText: json["OwnedByText"],
        restaurantSafety: json["RestaurantSafety"],
        restaurantMobileImage: json["RestaurantMobileImage"],
        restaurantDesktopImage: json["RestaurantDesktopImage"],
        enableAdvanceOrder: json["EnableAdvanceOrder"],
        advanceOrderTimeSlotDuration: json["AdvanceOrderTimeSlotDuration"],
        enablePayBillOption: json["EnablePayBillOption"],
        enableFeedbackFacility: json["EnableFeedbackFacility"],
        maxAdvanceOrderDays: json["MaxAdvanceOrderDays"],
        isFreeFlowModifier: json["IsFreeFlowModifier"],
        homeDeliveryDistRange: json["HomeDeliveryDistRange"],
        googleApiKey: json["GoogleAPIKey"],
        avgWineCost: json["AvgWineCost"],
        avgBeerCost: json["AvgBeerCost"],
        shareText: json["ShareText"],
        morningFromTime: json["MorningFromTime"],
        morningToTime: json["MorningToTime"],
        eveningFromTime: json["EveningFromTime"],
        eveningToTime: json["EveningToTime"],
        pickupTimeSlotDuration: json["PickupTimeSlotDuration"],
        deliveryTimeSlotDuration: json["DeliveryTimeSlotDuration"],
        enableJustOrderFeedbackFacility: json["EnableJustOrderFeedbackFacility"],
        brandWiseRestaurantCount: json["BrandWiseRestaurantCount"],
        viewTypeFlag: json["ViewTypeFlag"],
        enableCopyLocation: json["EnableCopyLocation"],
        enableViewAllOutlet: json["EnableViewAllOutlet"],
        enableGetdirections: json["EnableGetdirections"],
        restaurantShortDescription: json["RestaurantShortDescription"],
        imageForOrder: json["ImageForOrder"],
        imageForDineIn: json["ImageForDine_In"],
        imageForReserve: json["ImageForReserve"],
        imageForOffers: json["ImageForOffers"],
        isAllowModifierQuantity: json["isAllowModifierQuantity"],
        maxModifierQuantity: json["maxModifierQuantity"],
        emailAddress: json["EmailAddress"],
        websiteLink: json["WebsiteLink"],
        enableCurrentDayAdvanceOrder: json["EnableCurrentDayAdvanceOrder"],
        restrictOffersInAdvanceOrder: json["RestrictOffersInAdvanceOrder"],
        enableSpecialInstructions: json["EnableSpecialInstructions"],
        currencyText: json["CurrencyText"],
        currencySymbol: json["CurrencySymbol"],
        restaurantBlockTimes: RestaurantBlockTimes.fromJson(json["RestaurantBlockTimes"]),
        enabletablebooking: json["Enabletablebooking"],
    );

    Map<String, dynamic> toJson() => {
        "RestaurantID": restaurantId,
        "RestaurantName": restaurantName,
        "RestaurantAddress": restaurantAddress,
        "Location": location,
        "ContactNumber": contactNumber,
        "Votes": votes,
        "Rating": rating,
        "OpeningsHours": openingsHours,
        "RestaurantLogo": restaurantLogo,
        "AvgMealRate": avgMealRate,
        "BOTRestaurantId": botRestaurantId,
        "Distance": distance,
        "Latitude": latitude,
        "Longitude": longitude,
        "TotalPledge": totalPledge,
        "PromoDetails": promoDetails,
        "PromoURL": promoUrl,
        "PromoImage": promoImage,
        "RestaurantFlag": restaurantFlag,
        "ShareFlag": shareFlag,
        "FeedbackFacility": feedbackFacility,
        "HomeDelivery": homeDelivery,
        "IsClubAccount": isClubAccount,
        "HappyHoursFromTime": happyHoursFromTime,
        "HappyHoursToTime": happyHoursToTime,
        "MenuImages": List<dynamic>.from(menuImages.map((x) => x.toJson())),
        "CrediteCards": List<dynamic>.from(crediteCards.map((x) => x)),
        "Cuisines": List<dynamic>.from(cuisines.map((x) => x.toJson())),
        "RestaurantDishes": List<dynamic>.from(restaurantDishes.map((x) => x.toJson())),
        "CustomersPromos": List<dynamic>.from(customersPromos.map((x) => x)),
        "Facilities": List<dynamic>.from(facilities.map((x) => x.toJson())),
        "TouristDetails": List<dynamic>.from(touristDetails.map((x) => x.toJson())),
        "CheckInStatus": checkInStatus.toJson(),
        "CityId": cityId,
        "CityName": cityName,
        "MinOrder": minOrder,
        "MinTime": minTime,
        "AccountId": accountId,
        "DeliveryFromTime": deliveryFromTime,
        "DeliveryToTime": deliveryToTime,
        "GroupId": groupId,
        "RestaurantDetailMenuUser": List<dynamic>.from(restaurantDetailMenuUser.map((x) => x.toJson())),
        "RestaurantDetailMenuOwner": List<dynamic>.from(restaurantDetailMenuOwner.map((x) => x.toJson())),
        "RestaurantImage": restaurantImage,
        "WeekTime": List<dynamic>.from(weekTime.map((x) => x)),
        "RestaurantMinOrderValue": List<dynamic>.from(restaurantMinOrderValue.map((x) => x)),
        "RestaurantSafetyMeasure": List<dynamic>.from(restaurantSafetyMeasure.map((x) => x)),
        "BrandId": brandId,
        "BrandDescription": brandDescription,
        "LocationId": locationId,
        "LocationName": locationName,
        "BoolIsOLO": boolIsOlo,
        "BoolIsEMenu": boolIsEMenu,
        "BoolIsJustOrder": boolIsJustOrder,
        "BoolIsBill": boolIsBill,
        "BoolIsSettlement": boolIsSettlement,
        "BoolIsIRD": boolIsIrd,
        "MinDeliveryTime": minDeliveryTime,
        "HomeDeliveryPickTime": homeDeliveryPickTime,
        "EveDeliveryFromTime": eveDeliveryFromTime,
        "EveDeliveryToTime": eveDeliveryToTime,
        "COVIDText": covidText,
        "AboutRestaurantText": aboutRestaurantText,
        "OwnedByText": ownedByText,
        "RestaurantSafety": restaurantSafety,
        "RestaurantMobileImage": restaurantMobileImage,
        "RestaurantDesktopImage": restaurantDesktopImage,
        "EnableAdvanceOrder": enableAdvanceOrder,
        "AdvanceOrderTimeSlotDuration": advanceOrderTimeSlotDuration,
        "EnablePayBillOption": enablePayBillOption,
        "EnableFeedbackFacility": enableFeedbackFacility,
        "MaxAdvanceOrderDays": maxAdvanceOrderDays,
        "IsFreeFlowModifier": isFreeFlowModifier,
        "HomeDeliveryDistRange": homeDeliveryDistRange,
        "GoogleAPIKey": googleApiKey,
        "AvgWineCost": avgWineCost,
        "AvgBeerCost": avgBeerCost,
        "ShareText": shareText,
        "MorningFromTime": morningFromTime,
        "MorningToTime": morningToTime,
        "EveningFromTime": eveningFromTime,
        "EveningToTime": eveningToTime,
        "PickupTimeSlotDuration": pickupTimeSlotDuration,
        "DeliveryTimeSlotDuration": deliveryTimeSlotDuration,
        "EnableJustOrderFeedbackFacility": enableJustOrderFeedbackFacility,
        "BrandWiseRestaurantCount": brandWiseRestaurantCount,
        "ViewTypeFlag": viewTypeFlag,
        "EnableCopyLocation": enableCopyLocation,
        "EnableViewAllOutlet": enableViewAllOutlet,
        "EnableGetdirections": enableGetdirections,
        "RestaurantShortDescription": restaurantShortDescription,
        "ImageForOrder": imageForOrder,
        "ImageForDine_In": imageForDineIn,
        "ImageForReserve": imageForReserve,
        "ImageForOffers": imageForOffers,
        "isAllowModifierQuantity": isAllowModifierQuantity,
        "maxModifierQuantity": maxModifierQuantity,
        "EmailAddress": emailAddress,
        "WebsiteLink": websiteLink,
        "EnableCurrentDayAdvanceOrder": enableCurrentDayAdvanceOrder,
        "RestrictOffersInAdvanceOrder": restrictOffersInAdvanceOrder,
        "EnableSpecialInstructions": enableSpecialInstructions,
        "CurrencyText": currencyText,
        "CurrencySymbol": currencySymbol,
        "RestaurantBlockTimes": restaurantBlockTimes.toJson(),
        "Enabletablebooking": enabletablebooking,
    };
}

class CheckInStatus {
    CheckInStatus({
        required this.statusFlag,
    });

    int statusFlag;

    factory CheckInStatus.fromJson(Map<String, dynamic> json) => CheckInStatus(
        statusFlag: json["StatusFlag"],
    );

    Map<String, dynamic> toJson() => {
        "StatusFlag": statusFlag,
    };
}

class Cuisine {
    Cuisine({
        required this.cuisine,
        required this.cuisineId,
    });

    String cuisine;
    int cuisineId;

    factory Cuisine.fromJson(Map<String, dynamic> json) => Cuisine(
        cuisine: json["Cuisine"],
        cuisineId: json["CuisineId"],
    );

    Map<String, dynamic> toJson() => {
        "Cuisine": cuisine,
        "CuisineId": cuisineId,
    };
}

class Facility {
    Facility({
        required this.facilities,
        required this.values,
    });

    String facilities;
    bool values;

    factory Facility.fromJson(Map<String, dynamic> json) => Facility(
        facilities: json["Facilities"],
        values: json["Values"],
    );

    Map<String, dynamic> toJson() => {
        "Facilities": facilities,
        "Values": values,
    };
}

class MenuImage {
    MenuImage({
        required this.menuImageName,
    });

    String menuImageName;

    factory MenuImage.fromJson(Map<String, dynamic> json) => MenuImage(
        menuImageName: json["MenuImageName"],
    );

    Map<String, dynamic> toJson() => {
        "MenuImageName": menuImageName,
    };
}

class RestaurantBlockTimes {
    RestaurantBlockTimes({
        required this.specialDays,
        required this.weekDays,
        required this.dateRange,
    });

    List<dynamic> specialDays;
    List<dynamic> weekDays;
    List<dynamic> dateRange;

    factory RestaurantBlockTimes.fromJson(Map<String, dynamic> json) => RestaurantBlockTimes(
        specialDays: List<dynamic>.from(json["SpecialDays"].map((x) => x)),
        weekDays: List<dynamic>.from(json["WeekDays"].map((x) => x)),
        dateRange: List<dynamic>.from(json["DateRange"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "SpecialDays": List<dynamic>.from(specialDays.map((x) => x)),
        "WeekDays": List<dynamic>.from(weekDays.map((x) => x)),
        "DateRange": List<dynamic>.from(dateRange.map((x) => x)),
    };
}

class RestaurantDetailMenu {
    RestaurantDetailMenu({
        required this.uniqueid,
        required this.discription,
        required this.imageName,
        required this.order,
    });

    String uniqueid;
    String discription;
    String imageName;
    int order;

    factory RestaurantDetailMenu.fromJson(Map<String, dynamic> json) => RestaurantDetailMenu(
        uniqueid: json["Uniqueid"],
        discription: json["Discription"],
        imageName: json["ImageName"],
        order: json["Order"],
    );

    Map<String, dynamic> toJson() => {
        "Uniqueid": uniqueid,
        "Discription": discription,
        "ImageName": imageName,
        "Order": order,
    };
}

class RestaurantDish {
    RestaurantDish({
        required this.restaurantDishId,
        required this.restaurantDishName,
        required this.rank,
        required this.votes,
        required this.isVeg,
        required this.dishImage,
        required this.dishGlossary,
        required this.fmUser,
        required this.friends,
        required this.isDishLike,
        required this.dishSequence,
        required this.rate,
    });

    int restaurantDishId;
    String restaurantDishName;
    int rank;
    String votes;
    int isVeg;
    String dishImage;
    int dishGlossary;
    int fmUser;
    int friends;
    int isDishLike;
    int dishSequence;
    String rate;

    factory RestaurantDish.fromJson(Map<String, dynamic> json) => RestaurantDish(
        restaurantDishId: json["RestaurantDishId"],
        restaurantDishName: json["RestaurantDishName"],
        rank: json["Rank"],
        votes: json["Votes"],
        isVeg: json["IsVeg"],
        dishImage: json["DishImage"],
        dishGlossary: json["DishGlossary"],
        fmUser: json["FMUser"],
        friends: json["Friends"],
        isDishLike: json["IsDishLike"],
        dishSequence: json["DishSequence"],
        rate: json["Rate"],
    );

    Map<String, dynamic> toJson() => {
        "RestaurantDishId": restaurantDishId,
        "RestaurantDishName": restaurantDishName,
        "Rank": rank,
        "Votes": votes,
        "IsVeg": isVeg,
        "DishImage": dishImage,
        "DishGlossary": dishGlossary,
        "FMUser": fmUser,
        "Friends": friends,
        "IsDishLike": isDishLike,
        "DishSequence": dishSequence,
        "Rate": rate,
    };
}

class TouristDetail {
    TouristDetail({
        required this.restaurantDishId,
        required this.touristRank,
        required this.touristVotes,
        required this.touristFmUser,
        required this.touristFriends,
    });

    int restaurantDishId;
    int touristRank;
    String touristVotes;
    int touristFmUser;
    int touristFriends;

    factory TouristDetail.fromJson(Map<String, dynamic> json) => TouristDetail(
        restaurantDishId: json["RestaurantDishId"],
        touristRank: json["TouristRank"],
        touristVotes: json["TouristVotes"],
        touristFmUser: json["TouristFMUser"],
        touristFriends: json["TouristFriends"],
    );

    Map<String, dynamic> toJson() => {
        "RestaurantDishId": restaurantDishId,
        "TouristRank": touristRank,
        "TouristVotes": touristVotes,
        "TouristFMUser": touristFmUser,
        "TouristFriends": touristFriends,
    };
}
