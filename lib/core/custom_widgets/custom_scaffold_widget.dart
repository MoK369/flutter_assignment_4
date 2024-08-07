import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  double screenWidth, screenHeight;
  Widget screenText;
  String screenImagePath;

  CustomScaffold(
      {super.key,
      required this.screenWidth,
      required this.screenHeight,
      required this.screenText,
      required this.screenImagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/Bg.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: const SizedBox(),
          leadingWidth: 0,
          title: const Text("RouteAppOne"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: screenHeight * 0.02),
            FractionallySizedBox(
                widthFactor: 0.8, child: Image.asset(screenImagePath)),
            SizedBox(height: screenHeight * 0.02),
            Expanded(child: SingleChildScrollView(child: screenText))
          ],
        ),
      ),
    );
  }
}
