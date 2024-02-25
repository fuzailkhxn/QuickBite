import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_bite/common/app_style.dart';
import 'package:quick_bite/common/reusable_text.dart';
import 'package:quick_bite/constants/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
  padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
  height: 110.h,
  width: MediaQuery.of(context).size.width, // Adjusted width
  color: kOffWhite,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center, // Adjusted crossAxisAlignment
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 22.r,
            backgroundColor: kSecondary,
            backgroundImage: const NetworkImage('https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg'),
          ),
          SizedBox(width: 8.w), // Added SizedBox for spacing
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ReusableText(
                text: "Deliver to",
                style: appStyle(13, kSecondary, FontWeight.w600),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6, // Adjusted width
                child: Text(
                  "16768 21st Ave N, Plymouth, MN 55447",
                  overflow: TextOverflow.ellipsis,
                  style: appStyle(13, kGrayLight, FontWeight.normal),
                ),
              ),
            ],
          ),
        ],
      ),
      Text(
        getTimeOfDay(),
        style: const TextStyle(fontSize: 35),
      )
    ],
  ),
);

    
  }

  String getTimeOfDay() {
    DateTime now = DateTime.now();
    int hour = now.hour;

    if (hour >= 0 && hour < 12) {
      return ' ☀️ ';
    } else if (hour >= 12 && hour < 16) {
      return ' ⛅ ';
    } else {
      return ' 🌙 ';
    }
  }
}
