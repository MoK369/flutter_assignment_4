import 'package:flutter/material.dart';
import 'package:flutter_assignment4/Modules/FullStack/full_stack_custom_text_widget.dart';
import 'package:flutter_assignment4/core/custom_widgets/custom_scaffold_widget.dart';

class FullStackScreen extends StatelessWidget {
  static const String routeName = 'FullStackScreen';
  static late double fullStackScreenWidth, fullStackScreenHeight;

  const FullStackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    fullStackScreenWidth = MediaQuery.of(context).size.width;
    fullStackScreenHeight = MediaQuery.of(context).size.height;
    return CustomScaffold(
        screenWidth: fullStackScreenWidth,
        screenHeight: fullStackScreenHeight,
        screenText: const FullStackCustomText(),
        screenImagePath: 'assets/images/fullStack.jpeg');
  }
}
