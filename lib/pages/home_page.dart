import "package:flutter/material.dart";
import "package:flutter_basics/widgets/drawer.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      drawer: MyDrawer(),
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
