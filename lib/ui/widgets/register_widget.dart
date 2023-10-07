import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resources/colors.dart';

class RegisterWidget extends StatelessWidget {
  const RegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 40),
            Text(
              "Signup to Shopping!",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, letterSpacing: 1.1),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(top: 8),
              padding: EdgeInsetsDirectional.symmetric(horizontal: 42),
              child: TextField(
                decoration: InputDecoration(hintText: "NAME"),
                keyboardType: TextInputType.name,
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(top: 8),
              padding: EdgeInsetsDirectional.symmetric(horizontal: 42),
              child: TextField(
                decoration: InputDecoration(hintText: "PHONE"),
                keyboardType: TextInputType.phone,
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(top: 8),
              padding: EdgeInsetsDirectional.symmetric(horizontal: 42),
              child: TextField(
                decoration: InputDecoration(hintText: "EMAIL"),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(top: 8),
              padding: EdgeInsetsDirectional.symmetric(horizontal: 42),
              child: TextField(
                decoration: InputDecoration(hintText: "PASSWORD"),
                obscureText: true,
              ),
            ),
            SizedBox(height: 40),
            GestureDetector(
              child: Container(
                alignment: Alignment.center,
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                  color: AppColor.primary,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Text(
                  "REGISTER",
                  style: TextStyle(color: AppColor.white, fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 1.5),
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsetsDirectional.only(top: 16),
                child: RichText(
                  text: TextSpan(
                    text: "Already have an account?  ",
                    style: GoogleFonts.ubuntuCondensed(fontSize: 12, color: AppColor.darkBackground),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Sign in',
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ],
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
