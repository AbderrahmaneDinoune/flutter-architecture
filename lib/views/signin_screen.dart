import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_mvvm_getx/core/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/style/colors.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final emailcontroller = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final passwordcontroller = TextEditingController();
  bool loading = false;

  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/loginBG2.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.width * .2),
              alignment: Alignment.topCenter,
              child: Text(
                "My App",
                style: GoogleFonts.poppins(
                    fontSize: 37, color: fontBlue, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * .125,
              ),
              alignment: Alignment.topCenter,
              child: Center(
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.height * .35,
                      height: MediaQuery.of(context).size.height * .4,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(45)),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Enter your",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: fontBlue,
                                  ),
                                ),
                                Text(
                                  "email",
                                  style: GoogleFonts.poppins(
                                      fontSize: 21,
                                      color: fontBlue,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    controller: emailcontroller,
                                    decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.only(left: 30),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        borderSide: BorderSide.none,
                                      ),
                                      filled: true,
                                      hintStyle: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: fontBlue,
                                      ),
                                      hintText: "Type in your email",
                                      fillColor: Colors.white,
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Champs obligatoires";
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: TextFormField(
                                    keyboardType: TextInputType.visiblePassword,
                                    controller: passwordcontroller,
                                    obscureText: !_passwordVisible,
                                    decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.only(left: 30),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        borderSide: BorderSide.none,
                                      ),
                                      filled: true,
                                      hintStyle: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: fontBlue,
                                      ),
                                      hintText: "Password",
                                      fillColor: Colors.white,
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          // Based on passwordVisible state choose the icon
                                          _passwordVisible
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                          color: fontBlue,
                                        ),
                                        onPressed: () {
                                          // Update the state i.e. toogle the state of passwordVisible variable
                                          setState(() {
                                            _passwordVisible =
                                                !_passwordVisible;
                                          });
                                        },
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Champs obligatoires";
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    setState(() {
                                      loading = true;
                                    });
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: fontBlue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  height:
                                      MediaQuery.of(context).size.width * .13,
                                  child: loading
                                      ? const CircularProgressIndicator(
                                          color: fontyellow,
                                        )
                                      : Text(
                                          "Log In",
                                          style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              color: fontyellow,
                                              fontWeight: FontWeight.w600),
                                        ),
                                ),
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: GestureDetector(
                                onTap: () {
                                  Get.toNamed(AppRoutes.signupScreenRoute);
                                },
                                child: Text(
                                  'Sign Up',
                                  style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    color: fontBlue,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    'By creating an account, you accept our',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: Colors.black45,
                                    ),
                                  ),
                                  Text(
                                    'Terms and Conditions.',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: fontBlue,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
