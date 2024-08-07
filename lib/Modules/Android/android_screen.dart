import 'package:flutter/material.dart';
import 'package:flutter_assignment4/Modules/Android/android_custom_text_widget.dart';
import 'package:flutter_assignment4/core/custom_widgets/custom_scaffold_widget.dart';

class AndroidScreen extends StatelessWidget {
  static const String routeName = "AndroidScreen";
  static late double androidScreenWidth, androidScreenHeight;

  const AndroidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    androidScreenWidth = MediaQuery.of(context).size.width;
    androidScreenHeight = MediaQuery.of(context).size.height;
    return CustomScaffold(
        screenWidth: androidScreenWidth,
        screenHeight: androidScreenHeight,
        screenText: const AndroidCustomText(),
        screenImagePath: 'assets/images/Android.jpeg');
  }
}
