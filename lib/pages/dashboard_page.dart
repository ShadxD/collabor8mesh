import 'package:collabor8mesh/const/pallete.dart';
import 'package:collabor8mesh/models/streams.dart';
import 'package:collabor8mesh/models/streams_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../components/streams_tile.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<StreamsList>(
        builder: (context, value, child) => Column(
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
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.bold),
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
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      Streams stream = value.getStreamList()[index];

                      return StreamsTile(
                        stream: stream,
                      );
                    },
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 25, left: 25, right: 25),
                  child: Divider(
                    color: Colors.white,
                  ),
                )
              ],
            ));
  }
}
