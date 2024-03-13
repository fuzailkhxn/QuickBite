import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_bite/common/app_style.dart';
import 'package:quick_bite/common/back_ground_container.dart';
import 'package:quick_bite/common/reusable_text.dart';
import 'package:quick_bite/constants/constants.dart';
import 'package:quick_bite/constants/uidata.dart';
import 'package:quick_bite/views/home/widgets/food_widget.dart';
import 'package:quick_bite/views/home/widgets/restaurant_tile.dart';

class AllNearbyRestaurants extends StatelessWidget {
  const AllNearbyRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kOffWhite,
        title: ReusableText(
            text: "Nearby Restaurants",
            style: appStyle(13, kGray, FontWeight.w600)),
      ),
      body: BackGroundContainer(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(12.h),
          child: ListView(
            children: List.generate(restaurants.length, (i) {
              var restaurant = restaurants[i];
              return RestaurantTile(
                restaurant: restaurant,
              );
            }),
          ),
        ),
      ),
    );
  }
}