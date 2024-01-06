import "package:flutter/material.dart";
import "package:flutter_basics/util/routes.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 15,
          ),
          alignment: Alignment.center,
          height: 400,
          width: 400,
          child: Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          " Welcome ",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter username",
                  label: Text(
                    "Username",
                  ),
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter password",
                  label: Text(
                    "Password",
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        ElevatedButton(
          style: TextButton.styleFrom(minimumSize: Size(120, 50)),
          onPressed: () {
            Navigator.pushNamed(context, MyRoute.homeRoute);
          },
          child: Text(
            "Login",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        )
      ],
    ));
  }
}
