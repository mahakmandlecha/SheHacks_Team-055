import 'package:flutter/material.dart';
import 'package:shehacks_team_055/screens/slide.dart';
//import 'package:app_onboarding/screens/onboarding_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'App Onboarding',
        debugShowCheckedModeBanner: false,
        home: SlideScreen()
        //home: OnboardingScreen()
        );
  }
}
