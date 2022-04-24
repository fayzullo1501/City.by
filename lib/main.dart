import 'package:flutter/material.dart';
import 'package:portme/SplashScreen.dart';
import 'welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laboratory 2',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
