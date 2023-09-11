import 'package:collabor8mesh/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../const/pallete.dart';
import '../components/login_field.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20),
                // color: Colors.red,
                height: 170.h,
                width: 170.w,
                child: Lottie.network(
                    'https://lottie.host/033f01b5-fd0d-4a14-b8b3-39f374135f0a/IJDyRwd7AY.json'),
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 14.h),
                  // color: Colors.amber,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Get On Board!',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Create your profile to start your journey',
                        style: TextStyle(fontSize: 15.sp),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      const Textfield(hintText: 'Full Name'),
                      SizedBox(
                        height: 10.h,
                      ),
                      const Textfield(hintText: 'E-mail'),
                      SizedBox(
                        height: 10.h,
                      ),
                      const Textfield(hintText: 'Phone No'),
                      SizedBox(
                        height: 10.h,
                      ),
                      const Textfield(hintText: 'Password'),
                      SizedBox(
                        height: 20.h,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(395.h, 55.w),
                            backgroundColor: Pallete.universecolor),
                        onPressed: () {},
                        child: const Text(
                          'SignUp',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const Center(
                        child: Text(
                          'OR',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            side: const BorderSide(
                              color: Colors.black,
                            ),
                            fixedSize: const Size(395, 55),
                            backgroundColor: Pallete.whiteColor),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 40.h,
                              width: 40.w,
                              child: Image.network(
                                  'http://pngimg.com/uploads/google/google_PNG19635.png',
                                  fit: BoxFit.cover),
                            ),
                            SizedBox(
                              width: 10.h,
                            ),
                            const Text(
                              'Sign in with Google',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have an Account?",
                            style: TextStyle(color: Colors.black),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const LoginPage(),
                                    ));
                              },
                              child: const Text('Login')),
                        ],
                      ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                    ],
                  ))
            ]),
      ),
    );
  }
}
