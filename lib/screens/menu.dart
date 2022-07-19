import 'package:flutter/material.dart';
import 'package:pizza_app/pizza_menu.dart';
import 'package:pizza_app/widgets/buttonbar.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  static const routeName = '/menu';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Check out our deliciouuus pizzas!',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(children: [
        Expanded(child: ListView(children: pizzaMenu)),
        const MyButtonBar(),
      ]),
    );
  }
}
