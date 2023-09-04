import 'package:flutter/material.dart';
import 'package:flutter_application_2/login.dart';
import 'package:flutter_application_2/utils/color_utils.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SplashScreenView(
      navigateRoute: const MyLogin(),
      duration: 5000,
      imageSize: 250,
      imageSrc: "assets/ss.png",
      text: "Institute of Emerging Careers",
      textType: TextType.ColorizeAnimationText,
      textStyle: const TextStyle(
        fontSize: 29.0,
      ),
      colors: [
        Colors.red,
        Color.fromARGB(255, 1, 138, 251),
        Color.fromARGB(255, 33, 98, 150),
        Color.fromARGB(255, 15, 51, 81),
        Colors.red,
      ],
      // backgroundColor: Colors.white,
    //   body: Container(
    //
    //
    // width: MediaQuery.of(context).size.width,
    // height: MediaQuery.of(context).size.height,
    // decoration: BoxDecoration(
    // gradient: LinearGradient(colors: [
    // hexStringToColor("#ffa8a8"),
    // hexStringToColor("#cdfaf4"),
    // hexStringToColor("5E61F4")
    // ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
    //       child: SingleChildScrollView(
    // child:
    //
    //   SplashScreenView(
    //   navigateRoute: const MyLogin(),
    //   duration: 5000,
    //   imageSize: 250,
    //   imageSrc: "assets/ss.png",
    //   text: "Institute of Emerging Careers",
    //   textType: TextType.ColorizeAnimationText,
    //   textStyle: const TextStyle(
    //     fontSize: 29.0,
    //   ),
    //   colors: [
    //     Colors.red,
    //     Color.fromARGB(255, 1, 138, 251),
    //     Color.fromARGB(255, 33, 98, 150),
    //     Color.fromARGB(255, 15, 51, 81),
    //     Colors.red,
    //   ],
    //   backgroundColor: Colors.white,
    // ),
    // ),
    //   ),
    );
  }
}
