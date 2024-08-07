import 'package:flutter/material.dart';
import 'package:flutter_assignment4/Modules/Android/android_screen.dart';
import 'package:flutter_assignment4/Modules/FullStack/full_stack_screen.dart';
import 'package:flutter_assignment4/Modules/Home/custom_widgets/course_card.dart';
import 'package:flutter_assignment4/Modules/IOS/ios_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "HomeScreen";
  static late double homeScreenWidth, homeScreenHeight;

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    homeScreenWidth = MediaQuery.of(context).size.width;
    homeScreenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("RouteAppOne"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CourseCard(
              imagePath: 'assets/images/Android.jpeg',
              buttonText: 'ANDROID COURSE',
              onClick: () {
                Navigator.pushNamed(context, AndroidScreen.routeName);
              },
            ),
            CourseCard(
              imagePath: 'assets/images/IOS.jpeg',
              buttonText: 'IOS COURSE',
              onClick: () {
                Navigator.pushNamed(context, IOSScreen.routeName);
              },
            ),
            CourseCard(
              imagePath: 'assets/images/fullStack.jpeg',
              buttonText: 'FULL STACK',
              onClick: () {
                Navigator.pushNamed(context, FullStackScreen.routeName);
              },
            )
          ],
        ),
      ),
    );
  }
}
