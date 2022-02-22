
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

 getCatchNetworkImageForSeriesCircle(String url,
    {double radius = 30, double height = 60, double width = 60}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(radius),
    child: CachedNetworkImage(
      imageUrl: url,
      height: height,
      width: width,
      fit: BoxFit.fill,
      placeholder: (context, url) => Center(
        child: SizedBox(
          width: width,
          height: height,
          child:  const CircularProgressIndicator(),
        ),
      ),
      errorWidget: (context, url, error) => const CircleAvatar(
          radius: 35, backgroundImage: AssetImage('images/restaurant.jpg')),
    ),
  );
}

getCatchNetworkImageForSquare(String url,
    {double height = 60, double width = 60}) {
  return CachedNetworkImage(
    imageUrl: url,
    height: height,
    width: width,
    fit: BoxFit.fill,
    placeholder: (context, url) => Center(
      child: SizedBox(
        width: width,
        height: height,
        child:  const CircularProgressIndicator(),
      ),
    ),
    errorWidget: (context, url, error) => Container(
      color: Colors.white,
      child: Image.asset(
        'assets/i2.jpg',
      ),
    ),
  );
}
