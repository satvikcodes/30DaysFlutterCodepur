import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Day 2"),
        ),
        body: Center(
            child: Container(
          child: Text("Hey Satvik !"),
        )),
      ),
    );
  }
}
