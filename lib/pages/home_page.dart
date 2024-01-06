import "package:flutter/material.dart";
import "package:flutter_basics/pages/login_page.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day 2"),
      ),
      body: Center(
        child: Container(
          child: Text("Hey Satvik !"),
        ),
      ),
    );
  }
}
