import 'package:flutter/material.dart';
import 'package:flutter_assignment4/Modules/Home/home_screen.dart';

class CourseCard extends StatelessWidget {
  String imagePath;
  String buttonText;
  void Function() onClick;

  CourseCard(
      {super.key,
      required this.imagePath,
      required this.buttonText,
      required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: HomeScreen.homeScreenHeight * 0.01),
        Image.asset(
          imagePath,
          fit: BoxFit.fill,
          width: HomeScreen.homeScreenWidth * 0.9,
          height: (HomeScreen.homeScreenWidth * 0.9) / 1.875,
        ),
        SizedBox(height: HomeScreen.homeScreenHeight * 0.005),
        ElevatedButton(
          onPressed: onClick,
          style: ButtonStyle(
            fixedSize: MaterialStatePropertyAll(Size(
                HomeScreen.homeScreenWidth * 0.95,
                (HomeScreen.homeScreenWidth * 0.95) / 9)),
          ),
          child: Text(
            buttonText,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        )
      ],
    );
  }
}
