import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green,
        actions: [
          // Padding(...)
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // Move onPageChanged here
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                currentIndex = page;
              });
            },
            children: [
              Container(
                  padding:
                      const EdgeInsets.only(left: 50, right: 50, bottom: 80),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 350,
                          child: Image.asset('assets/images/plant-eight.png'),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          Constants.titleOne,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Constants.primaryColor,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                      ]))
            ],
          ),
        ],
      ),
    );
  }
}
