import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:isar/isar.dart';

import 'package:password_strength/password_strength.dart';

import 'selection_page.dart';
import 'sign_up.dart';

class LoginPage extends StatefulWidget {
  final Isar isar;
  const LoginPage(this.isar, {Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final magicBox = Hive.box('MagicBox');
  bool isObscured = true;
  bool isError = false;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(411.42857142857144, 876.5714285714286),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: () => Scaffold(
              body: Form(
                key: _formKey,
                child: Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width >
                            MediaQuery.of(context).size.height
                        ? 0.9 * MediaQuery.of(context).size.height
                        : 0.9 * MediaQuery.of(context).size.width,
                    child: ListView(
                      children: [
                        const SizedBox(
                          height: 100,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Log in",
                              style: TextStyle(
                                  fontSize: 30, color: Colors.blue.shade400)),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        isError
                            ? const Text(
                                "Username and Password doesn't match",
                                style: TextStyle(color: Colors.red),
                              )
                            : const SizedBox(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: userNameController,
                            validator: (text) {
                              if (text == null || text.isEmpty) {
                                return "This field can't be null";
                              } else if (text.length < 4) {
                                return "Too short";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                                hintText: "Username",
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1,
                                        color: Color.fromARGB(
                                            255, 93, 121, 134)))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            obscureText: isObscured,
                            validator: (text) {
                              if (text != null) {
                                final strength = estimatePasswordStrength(text);
                                if (strength < 0.3) {
                                  return 'This password is weak!';
                                } else {
                                  return "Enter your password";
                                }
                              }
                              return null;
                            },
                            controller: passwordController,
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        isObscured = !isObscured;
                                      });
                                    },
                                    icon: Icon(isObscured
                                        ? Icons.visibility
                                        : Icons.visibility_off)),
                                hintText: "Password",
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1,
                                        color: Color.fromARGB(
                                            255, 93, 121, 134)))),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              if (userNameController.text ==
                                      magicBox.get("UserName") &&
                                  (passwordController.text ==
                                      magicBox.get("Password"))) {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SelectionPage(widget.isar)));
                              } else {
                                setState(() {
                                  isError = true;
                                });
                              }
                            },
                            child: const Text("Login")),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("New User? "),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SignUpPage(widget.isar)));
                                },
                                child: const Text("SignUp")),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ));
  }
}
