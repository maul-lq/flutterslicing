import 'package:flutter/material.dart';
// import 'package:flutterslicing/home.dart';
// import 'package:flutterslicing/onboarding.dart';
// import 'package:flutterslicing/page/home_page.dart';
import 'package:flutterslicing/page/test.dart';

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
      title: 'Flutter Demo',
      // darkTheme: ThemeData.dark(useMaterial3: true),
      theme: ThemeData(
        fontFamily: 'Poppins',
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white)
      ),
      // home: const HomeScreen(),
      home: const Testing(),
    );
  }
}

