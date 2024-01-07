import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("@satvikcodes"),
      ),
      body: Center(
        child: Container(
          child: Text(
            "Hey Satvik !",
            style: TextStyle(fontSize: 26),
          ),
        ),
      ),
    );
  }
}
