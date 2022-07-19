import 'package:flutter/material.dart';
import 'package:pizza_app/screens/about_us.dart';
import 'package:pizza_app/screens/intro.dart';
import 'package:pizza_app/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pizza App',
        theme: ThemeData(
          fontFamily: 'Dancing Script',
          primarySwatch: Colors.amber,
        ),
        home: const IntroScreen(),
        routes: {
          MenuScreen.routeName: (context) => const MenuScreen(),
          AboutUsScreen.routeName: (context) => const AboutUsScreen(),
        });
  }
}
