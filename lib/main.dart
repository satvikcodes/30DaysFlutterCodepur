import 'package:flutter/material.dart';
import 'package:flutter_basics/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  double days = 30;
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
