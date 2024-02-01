import 'package:e_commerce_shopping_app_ui/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  final introKey = GlobalKey<IntroductionScreenState>();

  OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
      bodyTextStyle: TextStyle(fontSize: 19),
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: 'Shop now',
          body: 'fslkfjkas salfsa; asdflasl aslkfas;f asl ,a'
              'alsf;als f,aslf a;sf l falfllas ',
          image: Image.asset(
            'assets/images/shop (1).png',
            width: 200,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Big Discount',
          body: 'fslkfjkas salfsa; asdflasl aslkfas;f asl ,a'
              'alsf;als f,aslf a;sf l falfllas ',
          image: Image.asset(
            'assets/images/shop (1).png',
            width: 200,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Free delivery',
          body: 'fslkfjkas salfsa; asdflasl aslkfas;f asl ,a'
              'alsf;als f,aslf a;sf l falfllas ',
          image: Image.asset(
            'assets/images/shop (1).png',
            width: 200,
          ),
          decoration: pageDecoration,
          footer:  Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));

              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(55),
                backgroundColor: const Color(0xffef6969),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Shop now',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),

      ],
      showSkipButton: false,
      showDoneButton: false,
      showBackButton: true,
      back: const Text(
        'Back',
        style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xffef6969)),
      ),
      next: const Text(
        'Next',
        style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xffef6969)),
      ),
      done: const Text(
        'Done',
        style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xffef6969)),
      ),
      skip: const Text(
        'Skip',
        style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xffef6969)),
      ),
      onDone: () {},
      onSkip: () {},
      dotsDecorator: DotsDecorator(
        size: const Size.square(10),
        activeSize: const Size(20, 10),
        activeColor: const Color(0xffef6969),
        color: Colors.black,
        spacing: const EdgeInsets.symmetric(horizontal: 3),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
