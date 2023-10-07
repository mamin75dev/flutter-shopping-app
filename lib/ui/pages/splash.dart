import 'package:flutter/material.dart';
import 'package:shopping/ui/pages/intro.dart';
import 'package:shopping/ui/resources/colors.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 2000), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const IntroPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/splash_background.jpg'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: AppColor.primary.withOpacity(0.8),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Clothing",
                style: TextStyle(
                  color: AppColor.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 10,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "LET'S SHOP IN",
                style: TextStyle(
                  color: AppColor.white,
                  letterSpacing: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
