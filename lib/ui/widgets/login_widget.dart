import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resources/colors.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 40),
            Text(
              "Login to Continue",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, letterSpacing: 1.1),
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
                  "LOGIN",
                  style: TextStyle(color: AppColor.white, fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 1.5),
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsetsDirectional.only(top: 16),
                child: RichText(
                  text: TextSpan(
                    text: "Don't have an account?  ",
                    style: GoogleFonts.ubuntuCondensed(fontSize: 12, color: AppColor.darkBackground),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Sign up',
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(top: 18),
              child: Text("- or -"),
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsetsDirectional.only(top: 24),
                alignment: Alignment.center,
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                  color: AppColor.facebook,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(FontAwesomeIcons.facebook, color: AppColor.white, size: 18),
                    Text(
                      "  LOGIN WITH FACEBOOK",
                      style: TextStyle(color: AppColor.white, fontSize: 14, letterSpacing: 1.2),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsetsDirectional.only(top: 8),
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                  color: AppColor.twitter,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.twitter,
                      color: AppColor.white,
                      size: 18,
                    ),
                    Text(
                      "  LOGIN WITH TWITTER",
                      style: TextStyle(color: AppColor.white, fontSize: 14, letterSpacing: 1.2),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
