import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping/ui/resources/colors.dart';
import 'package:shopping/ui/widgets/login_widget.dart';
import 'package:shopping/ui/widgets/register_widget.dart';

enum LoginRegisterPageEnum { login, register }

class LoginRegisterPage extends StatefulWidget {
  const LoginRegisterPage({super.key});

  @override
  State<LoginRegisterPage> createState() => _LoginRegisterPageState();
}

class _LoginRegisterPageState extends State<LoginRegisterPage> {
  var pageState = LoginRegisterPageEnum.login;

  TextStyle loginRegisterTabTextStyle(LoginRegisterPageEnum current) {
    if (current == pageState) {
      return const TextStyle(color: AppColor.white, fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 2);
    }
    return const TextStyle(color: AppColor.primary, fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 2);
  }

  BoxDecoration loginRegisterTabStyle(LoginRegisterPageEnum current) {
    Color color = AppColor.white;
    BorderRadiusGeometry? radius;
    if (current == LoginRegisterPageEnum.login) {
      radius = const BorderRadiusDirectional.horizontal(start: Radius.circular(30));
    } else if (current == LoginRegisterPageEnum.register) {
      radius = const BorderRadiusDirectional.horizontal(end: Radius.circular(30));
    }
    if (current == pageState) {
      color = AppColor.black;
    }

    return BoxDecoration(color: color, borderRadius: radius);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 230,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/splash_background.jpg'),
                    fit: BoxFit.fitWidth,
                    // colorFilter: ColorFilter.mode(AppColor.primary, BlendMode.color),
                  ),
                ),
                child: Container(
                  color: AppColor.primary.withOpacity(0.8),
                  padding: EdgeInsetsDirectional.only(start: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Welcome to ',
                          style: GoogleFonts.ubuntuCondensed(fontSize: 30, color: AppColor.white),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Shopping!',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "Get Started Now..",
                        style: GoogleFonts.ubuntuCondensed(fontSize: 28, color: AppColor.white),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                margin: EdgeInsetsDirectional.only(top: 205, start: 36, end: 36),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            pageState = LoginRegisterPageEnum.login;
                          });
                        },
                        child: Container(
                          height: double.infinity,
                          alignment: Alignment.center,
                          decoration: loginRegisterTabStyle(LoginRegisterPageEnum.login),
                          child: Text("LOGIN", style: loginRegisterTabTextStyle(LoginRegisterPageEnum.login)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            pageState = LoginRegisterPageEnum.register;
                          });
                        },
                        child: Container(
                          height: double.infinity,
                          alignment: Alignment.center,
                          decoration: loginRegisterTabStyle(LoginRegisterPageEnum.register),
                          child: Text("REGISTER", style: loginRegisterTabTextStyle(LoginRegisterPageEnum.register)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          pageState == LoginRegisterPageEnum.login ? LoginWidget() : RegisterWidget()
        ],
      ),
    );
  }
}
