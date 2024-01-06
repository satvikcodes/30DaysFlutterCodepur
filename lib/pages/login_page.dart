import "package:flutter/material.dart";
import "package:flutter_basics/util/routes.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "Satvik";
  bool changeButton = false;
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
          " Welcome ${name} ",
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
                onChanged: (value) {
                  name = value;
                  setState(() {});
                },
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
        InkWell(
          onTap: () async {
            setState(() {
              changeButton = true;
            });

            await Future.delayed(Duration(seconds: 1));
            Navigator.pushNamed(
              context,
              MyRoute.homeRoute,
            );
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            alignment: Alignment.center,
            child: changeButton
                ? Icon(
                    Icons.done,
                    color: Colors.white,
                  )
                : Text(
                    "Login",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18),
                  ),
            width: changeButton ? 50 : 150,
            height: 50,
            decoration: BoxDecoration(
              shape: changeButton ? BoxShape.circle : BoxShape.rectangle,
              color: Colors.deepPurple,
              //borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        // ElevatedButton(
        //   style: TextButton.styleFrom(minimumSize: Size(120, 50)),
        //   onPressed: () {
        //     Navigator.pushNamed(context, MyRoute.homeRoute);
        //   },
        //   child: Text(
        //     "Login",
        //     style: TextStyle(
        //       fontWeight: FontWeight.bold,
        //       fontSize: 22,
        //     ),
        //   ),
        // )
      ],
    ));
  }
}
