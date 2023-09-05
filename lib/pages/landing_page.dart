import 'package:collabor8mesh/const/pallete.dart';
import 'package:collabor8mesh/pages/login_page.dart';
import 'package:collabor8mesh/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Lottie.network(
            'https://lottie.host/033f01b5-fd0d-4a14-b8b3-39f374135f0a/IJDyRwd7AY.json'),
        const SizedBox(
          height: 100,
        ),
        const Text('Build Awesome Projects',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        const SizedBox(height: 10),
        const Text("Let's put your creativity on the",
            style: TextStyle(color: Colors.black, fontSize: 15)),
        const Text("development highway.",
            style: TextStyle(color: Colors.black, fontSize: 15)),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(150, 55),
                  side: const BorderSide(
                    color: Colors.black,
                  ),
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ));
                },
                child: const Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(150, 55),
                    backgroundColor: Pallete.universecolor),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignupPage(),
                      ));
                },
                child: const Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('SIGNUP'),
                )),
          ],
        )
      ]),
    );
  }
}
