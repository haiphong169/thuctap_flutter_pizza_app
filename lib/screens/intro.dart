import 'package:flutter/material.dart';
import 'package:pizza_app/screens/menu.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Pizza App',
                style: TextStyle(color: Colors.white, fontSize: 80),
              ),
              const SizedBox(
                height: 100,
              ),
              const CircleAvatar(
                backgroundImage:
                    AssetImage('assets/images/intro_background.jpg'),
                radius: 175,
              ),
              const SizedBox(
                height: 100,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      splashFactory: NoSplash.splashFactory),
                  onPressed: () =>
                      Navigator.pushNamed(context, MenuScreen.routeName),
                  child: const Text(
                    'Let\'s get you some pizzas!!',
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  ))
            ],
          ),
        ));
  }
}
