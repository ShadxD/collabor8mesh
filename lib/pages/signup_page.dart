import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../const/pallete.dart';
import '../helper/login_field.dart';

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
                height: 170,
                width: 170,
                child: Lottie.network(
                    'https://lottie.host/033f01b5-fd0d-4a14-b8b3-39f374135f0a/IJDyRwd7AY.json'),
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  // color: Colors.amber,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Get On Board!',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Create your profile to start your journey',
                        style: TextStyle(fontSize: 15),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const LoginField(hintText: 'Full Name'),
                      const SizedBox(
                        height: 10,
                      ),
                      const LoginField(hintText: 'E-mail'),
                      const SizedBox(
                        height: 10,
                      ),
                      const LoginField(hintText: 'Phone No'),
                      const SizedBox(
                        height: 10,
                      ),
                      const LoginField(hintText: 'Password'),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(395, 55),
                            backgroundColor: Pallete.universecolor),
                        onPressed: () {},
                        child: const Text(
                          'SignUp',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Center(
                        child: Text(
                          'OR',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
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
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.network_check_rounded,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
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
                          Text(
                            "Already have an Account?",
                            style: TextStyle(color: Colors.black),
                          ),
                          TextButton(onPressed: () {}, child: Text('Login')),
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