import 'package:collabor8mesh/const/pallete.dart';
import 'package:collabor8mesh/models/streams.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StreamsTile extends StatelessWidget {
  Streams stream;
  StreamsTile({super.key, required this.stream});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280.w,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(stream.imagepath)),
          Text(stream.description),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(stream.name),
                ],
              ),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Pallete.universecolor,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(12))),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
