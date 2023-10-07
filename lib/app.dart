import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping/ui/pages/intro.dart';
import 'package:shopping/ui/pages/login_register.dart';
import 'package:shopping/ui/pages/splash.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clothing',
      theme: ThemeData(
        textTheme: GoogleFonts.ubuntuCondensedTextTheme(Theme.of(context).textTheme),
        useMaterial3: true,
      ),
      home: const SplashPage(),
    );
  }
}
