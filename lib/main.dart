import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:e_saveapp/pages/dashboard.dart';
import 'package:e_saveapp/pages/home.dart';
import 'package:e_saveapp/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import './MyHeaderDrawer.dart';
import 'package:e_saveapp/pages/deposit.dart';
// import 'package:e_saveapp/pages/home.dart';
import 'package:e_saveapp/pages/notifications.dart';
import 'package:e_saveapp/pages/plan.dart';
import 'package:e_saveapp/pages/statement.dart';
import 'package:e_saveapp/pages/withdraw.dart';
import 'package:e_saveapp/pages/account.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: const Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset('assets/images/loading3.json'),
      splashIconSize: 600,
      duration: 5000,
      nextScreen: Home(),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}



