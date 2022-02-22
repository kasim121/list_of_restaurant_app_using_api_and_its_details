import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app/helpers/shimmer_home.dart';
import 'package:restaurant_app/provider/restaurant_details_provider.dart';

class HomeDetails extends StatelessWidget {
  final String id;
  final String lati;
  final String longi;
  final String? title;

  const HomeDetails({
    Key? key,
    required this.id,
    required this.lati,
    required this.longi,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final resDetailsProvider =
        Provider.of<RestaurantDetailsProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          // ignore: unnecessary_brace_in_string_interps
          "${title}",
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: FutureBuilder(
        future: resDetailsProvider.getRestaurantDetails(id, lati, longi),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (resDetailsProvider.restaurantDetailsModel == null) {
              return const Center(
                child: Text('No Data Found'),
              );
            } else {
              //  final list = snapshot.data as List;
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(resDetailsProvider.restaurantDetailsModel!.restaurantName)
                    ),
                  ),
                ),
              );
            }
          } else {
            return const HomeShimmer();
          }
        },
      ),
    );
  }
}

