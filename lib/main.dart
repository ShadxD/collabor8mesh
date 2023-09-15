import 'package:collabor8mesh/models/streams_list.dart';
import 'package:collabor8mesh/pages/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => StreamsList(),
      builder: (context, child) => ScreenUtilInit(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: LandingPage(),
        ),
      ),
    );
  }
}
