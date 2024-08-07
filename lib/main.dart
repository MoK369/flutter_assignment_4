import 'package:flutter/material.dart';
import 'package:flutter_assignment4/Modules/Android/android_screen.dart';
import 'package:flutter_assignment4/Modules/FullStack/full_stack_screen.dart';
import 'package:flutter_assignment4/Modules/Home/home_screen.dart';
import 'package:flutter_assignment4/Modules/Splash/splash_screen.dart';
import 'package:flutter_assignment4/core/themes/app_theme.dart';

import 'Modules/IOS/ios_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        SplashScreen.routeName: (context) => const SplashScreen(),
        AndroidScreen.routeName: (context) => const AndroidScreen(),
        IOSScreen.routeName: (context) => const IOSScreen(),
        FullStackScreen.routeName: (context) => const FullStackScreen()
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
