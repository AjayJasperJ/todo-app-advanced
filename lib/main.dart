import 'package:flutter/material.dart';
import 'package:todo_advance_app/app.dart';
import 'package:todo_advance_app/core/constants/colors.dart';
import 'package:todo_advance_app/screens/home_screen.dart';

void main() {
  runApp(AppEngine());
}

class AppEngine extends StatelessWidget {
  const AppEngine({super.key});

  @override
  Widget build(BuildContext context) {
    displaysize = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Constantcolors().nercha_white,
        fontFamily: 'general_sans',
      ),
      home: HomeScreen(),
    );
  }
}
