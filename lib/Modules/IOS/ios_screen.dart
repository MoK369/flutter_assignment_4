import 'package:flutter/cupertino.dart';
import 'package:flutter_assignment4/Modules/IOS/ios_custom_text_widget.dart';
import 'package:flutter_assignment4/core/custom_widgets/custom_scaffold_widget.dart';

class IOSScreen extends StatelessWidget {
  static const String routeName = "IOSScreen";
  static late double iosScreenWidth, iosScreenHeight;

  const IOSScreen({super.key});

  @override
  Widget build(BuildContext context) {
    iosScreenWidth = MediaQuery.of(context).size.width;
    iosScreenHeight = MediaQuery.of(context).size.height;
    return CustomScaffold(
        screenWidth: iosScreenWidth,
        screenHeight: iosScreenHeight,
        screenText: const IOS_CustomText(),
        screenImagePath: 'assets/images/IOS.jpeg');
  }
}
