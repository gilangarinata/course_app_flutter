import 'package:courses_app/resource/my_color.dart';
import 'package:courses_app/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: MyColor.PrimaryColor,
      ),
      home: const DashboardScreen(),
    );
  }
}
