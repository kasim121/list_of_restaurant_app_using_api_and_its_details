import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app/provider/restaurant_provider.dart';
import 'package:restaurant_app/helpers/shimmer_home.dart';

import '../helpers/common_function.dart';
import 'home_details.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final restprovider =
        Provider.of<RestaurantProvider>(context, listen: false);
    return Scaffold(
        appBar: AppBar(
        elevation: 0,
      
        centerTitle: true,
        backgroundColor: Colors.red,
        title: const Text(
         
          "List of Restaurant",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      
      body: SafeArea(
        child: FutureBuilder(
          future: restprovider.getRestaurant(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (restprovider.restaurantList == null &&
                  restprovider.restaurantList!.isEmpty) {
                return const Center(
                  child: Text(
                    'No Contest Data Found',
                    style: TextStyle(color: Colors.amber),
                  ),
                );
              } else {
                //  final list = snapshot.data as List;
                return ListView.builder(
                    itemCount: restprovider.restaurantList?.length,
                    itemBuilder: (context, index) {
                      var id = restprovider.restaurantList![index].restaurantId;
                      var lati = restprovider.restaurantList![index].latitude;
                      var longi = restprovider.restaurantList![index].longitude;
                      var title =
                          restprovider.restaurantList![index].restaurantName;
      
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeDetails(
                                        id: id.toString(),
                                        lati: lati.toString(),
                                        longi: longi.toString(),
                                        title: title,
                                      )));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.15,
                            child: Card(
                              color: Colors.white,
                              elevation: 5,
                              child: Center(
                                child: ListTile(
                                  leading: getCatchNetworkImageForSeriesCircle(
                                    restprovider
                                            .restaurantList![index].dishImage ??
                                        '',
                                  ),
                                  title: Text(
                                    restprovider
                                        .restaurantList![index].restaurantName,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.red,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    });
              }
            } else {
              return const HomeShimmer();
            }
          },
        ),
      ),
    );
  }
}
