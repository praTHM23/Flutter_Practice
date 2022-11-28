import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome ${name}",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 35),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter username", labelText: "username"),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      validator: ((String? value) {
                        if (value!.isEmpty) {
                          return "Enter username";
                        } else {
                          return null;
                        }
                      }),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "password"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter password"; 
                        } else if (value.length < 6) {
                          return "Password length should be atleast 6 ";
                        } else {
                          return null;
                        }
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        "forgot password",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    SizedBox(height: 10.0),

                    InkWell(
                      onTap: (() => moveToHome(context)),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changebutton ? 50 : 100,
                        // color: Colors.deepPurple,
                        height: 40,
                        alignment: Alignment.center,
                        child: changebutton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                        decoration: BoxDecoration(
                            color:
                                changebutton ? Colors.green : Colors.deepPurple,
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    )

                    // ElevatedButton(
                    //   onPressed: (() =>
                    //       Navigator.pushNamed(context, MyRoutes.homeRoute)),
                    //   child: Text("Sign In"),
                    //   style: TextButton.styleFrom(minimumSize: Size(100, 40)),
                    // )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
