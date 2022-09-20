import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'login_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          headline4: TextStyle(fontSize: 48, fontWeight: FontWeight.w900),
          headline6: TextStyle(fontWeight: FontWeight.w500),
          bodyText2: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          bodyText1: TextStyle(fontSize: 15, color: Colors.black),
          subtitle2: TextStyle(fontSize: 15, color: Color(0xffce1b4d)),
        ),
      ),
      home: AnimatedSplashScreen(
        duration: 3000,
        splash: Lottie.network(
            'https://assets2.lottiefiles.com/packages/lf20_jmejybvu.json'),
        nextScreen: LoginScreen(),
        splashIconSize: 250,
        backgroundColor: Colors.white,
        splashTransition: SplashTransition.scaleTransition,
      ),
    );
  }
}
