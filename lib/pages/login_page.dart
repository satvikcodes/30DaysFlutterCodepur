import "package:flutter/material.dart";
import "package:flutter_basics/util/routes.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  backToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(
        context,
        MyRoute.homeRoute,
      );
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Form(
      key: _formKey,
      child: SingleChildScrollView(
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
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return ("Please Enter User Name");
                      }
                      return null;
                    },
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
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return ("Please Enter Password");
                      } else if (value.length < 6) {
                        return ("Enter 6 Digit Password");
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Material(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                  backToHome(context);
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
        ),
      ),
    ));
  }
}
