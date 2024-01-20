import 'package:flutter/material.dart';
import 'package:sigv/constants.dart';
import 'package:sigv/screens/home/home_screen.dart';

void main() {
  runApp(SIGV());
}

class SIGV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SIGV',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
    );
  }
}
