import 'package:flutter/material.dart';
import 'package:todo_advance_app/app.dart';
import 'package:todo_advance_app/core/constants/colors.dart';
import 'package:todo_advance_app/widgets/txt_widget.dart';
import 'package:todo_advance_app/widgets/txtfield_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Txtfield(
          isPrefix: true,
          prefixspacing: 1,
          prefixIcon: Image.network(
            'https://cdn-icons-png.flaticon.com/512/752/752471.png',
            height: displaysize.height * .04,
          ),
          txtstyle: Txtstyle(
            color: Constantcolors().teal_darkCyan,
            font: Font.medium,
            size: displaysize.height * .02,
            letterSpacing: 0,
          ),
        ),
      ),
    );
  }
}
