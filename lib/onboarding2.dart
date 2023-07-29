import 'package:flutter/material.dart';
import 'package:splashscreen_onboarding_signup_login/onboarding3.dart';
import 'const.dart';

class OnBoardingScreen2 extends StatefulWidget {
  const OnBoardingScreen2({super.key});

  @override
  State<OnBoardingScreen2> createState() => _OnBoardingScreen2State();
}

class _OnBoardingScreen2State extends State<OnBoardingScreen2> {
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
                "Your Package in Our Safe Hands",
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
          Image.asset('assets/images/delivery2.png'),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Image.asset('assets/images/step2.png')],
            ),
          ),
          const SizedBox(height: 50),
          InkWell(
            onTap: () {
              // Navigate to the next screen when the "Next" text is tapped
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      const OnBoardingScreen3(), // Replace NextScreen with the screen you want to navigate to
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
                  "Next",
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
