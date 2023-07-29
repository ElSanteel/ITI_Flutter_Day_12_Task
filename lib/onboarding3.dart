import 'package:flutter/material.dart';
import 'package:splashscreen_onboarding_signup_login/login.dart';
import 'const.dart';

class OnBoardingScreen3 extends StatefulWidget {
  const OnBoardingScreen3({super.key});

  @override
  State<OnBoardingScreen3> createState() => _OnBoardingScreen3State();
}

class _OnBoardingScreen3State extends State<OnBoardingScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 120),
            child: Center(
              child: Text(
                "Commited Delivery on Time",
                style: TextStyle(
                  color: myCustomColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Image.asset('assets/images/delivery3.png'),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Image.asset('assets/images/step3.png')],
            ),
          ),
          const SizedBox(height: 50),
          InkWell(
            onTap: () {
              // Navigate to the next screen when the "Next" text is tapped
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      const LoginScreen(), // Replace NextScreen with the screen you want to navigate to
                ),
              );
            },
            child: Container(
              width: 190,
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0xffEF6A62),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  "Get Started",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
