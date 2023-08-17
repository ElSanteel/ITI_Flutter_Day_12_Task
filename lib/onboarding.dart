import 'package:flutter/material.dart';
import 'const.dart';
import 'onboarding2.dart'; // Import the file containing the next screen you want to navigate to

class OnBoardingScreen1 extends StatefulWidget {
  const OnBoardingScreen1({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen1> createState() => _OnBoardingScreen1State();
}

class _OnBoardingScreen1State extends State<OnBoardingScreen1> {
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
                "Browse & Order All Products ",
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
          const Text(
            "at Any Time",
            style: TextStyle(
              color: myCustomColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
              decoration: TextDecoration.underline,
            ),
          ),
          const SizedBox(height: 20),
          Image.asset('assets/images/delivery1.png'),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Image.asset('assets/images/step1.png')],
            ),
          ),
          const SizedBox(height: 50),
          InkWell(
            onTap: () {
              // Navigate to the next screen when the "Next" text is tapped
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      const OnBoardingScreen2(), // Replace NextScreen with the screen you want to navigate to
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
