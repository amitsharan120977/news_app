import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:isar/isar.dart';

import 'package:password_strength/password_strength.dart';

import 'login_page.dart';

class SignUpPage extends StatefulWidget {
  final Isar isar;
  const SignUpPage(this.isar, {Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _signBox = Hive.box('SignUp');
  bool isObscured = true;
  bool isObscured1 = true;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411.42857142857144, 876.5714285714286),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => Scaffold(
        appBar: AppBar(
          title: const Text("SignUp Page"),
        ),
        body: Form(
          key: _formKey,
          child: ListView(children: [
            TextFormField(
              validator: (text) {
                if (text == null || text.isEmpty) {
                  return "This field can't be null";
                } else if (text.length < 4) {
                  return "Too short";
                }
                return null;
              },
              controller: userNameController,
              decoration: const InputDecoration(
                  hintText: "UserName",
                  border: OutlineInputBorder(borderSide: BorderSide.none)),
            ),
            TextFormField(
              validator: (text) {
                if (text == null || text.isEmpty) {
                  return "This field can't be null";
                } else if (text.length < 4) {
                  return "Too short";
                } else if (!EmailValidator.validate(text)) {
                  return "Enter valid email";
                }
                return null;
              },
              controller: emailController,
              decoration: const InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(borderSide: BorderSide.none)),
            ),
            TextFormField(
              validator: (text) {
                if (text != null) {
                  final strength = estimatePasswordStrength(text);
                  if (strength < 0.3) return 'This password is weak!';
                } else {
                  return "Enter your password";
                }

                return null;
              },
              controller: passwordController,
              obscureText: isObscured,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isObscured = !isObscured;
                        });
                      },
                      icon: Icon(isObscured
                          ? Icons.visibility_off
                          : Icons.visibility)),
                  hintText: "Password",
                  border:
                      const OutlineInputBorder(borderSide: BorderSide.none)),
            ),
            TextFormField(
              obscureText: isObscured1,
              controller: confirmPasswordController,
              validator: (text) {
                if (text != null) {
                  if (text != passwordController.text) {
                    return 'This password is not matched';
                  }
                } else {
                  return "Enter confirm password";
                }

                return null;
              },
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isObscured1 = !isObscured1;
                        });
                      },
                      icon: Icon(isObscured1
                          ? Icons.visibility
                          : Icons.visibility_off)),
                  hintText: "Confirm Password",
                  border:
                      const OutlineInputBorder(borderSide: BorderSide.none)),
            ),
            Column(
              children: [
                TextButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _signBox.put("UserName", userNameController.text);
                        _signBox.put("Email", emailController.text);
                        _signBox.put("Password", passwordController.text);
                        _signBox.put(
                            "Confirm_password", confirmPasswordController.text);

                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage(widget.isar)));
                      }
                    },
                    child: const Text("Register here")),
                const Text("Already have Account"),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginPage(widget.isar)));
                    },
                    child: const Text("Login"))
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
