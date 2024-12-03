import 'package:flutter/material.dart';
import 'package:ukl/bioskop.dart';
import 'package:ukl/home.dart';
import 'package:ukl/login.dart';
import 'package:ukl/splash.dart';
import 'package:ukl/tiket1.dart';
import 'package:ukl/tiketku.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: splashScreen(),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => splashScreen(),
        '/register': (context) => Login(),
        '/home': (context) => HomePage(),
        '/cinema': (context) => CinemaScreen(),
        '/ticket': (context) => Tiket(),
        '/mytickets': (context) => MovieListScreen(),
      },
    );
  }
}
