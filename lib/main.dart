import 'package:flutter/material.dart';
import 'package:nuntium/view/auth/onboarding/onboarder.dart';
import 'package:nuntium/view/home/ui/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Onboarder(),
      // homeController: Home(),
    );

  }
}
