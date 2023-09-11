import 'package:collabor8mesh/const/pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/streams_tile.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //search bar
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 25.w),
          decoration: BoxDecoration(
              color: Pallete.universecolor,
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search',
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.search,
                color: Colors.white,
              )
            ],
          ),
        ),

        //message

        Padding(
          padding: EdgeInsets.symmetric(vertical: 25.h),
          child: Text(
            'Make it Work, make it right, make it fast',
          ),
        ),

        //hot picks

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Recommended',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
              Text(
                'See all',
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(child: ListView.builder(itemBuilder: (context, index) {
          return StreamsTile();
        }))
      ],
    );
  }
}
