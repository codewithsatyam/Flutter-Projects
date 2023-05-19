import 'package:flutter/material.dart';
import 'package:flutter_catatlog/pages/home_page.dart';
import 'package:flutter_catatlog/pages/login_page.dart';
import 'package:flutter_catatlog/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // double days = 30;
    // String name = "Codepur";
    return MaterialApp(
      color: Colors.white,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: GoogleFonts.lato().fontFamily,
        
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
      },
    );
  }
}
