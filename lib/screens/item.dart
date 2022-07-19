import 'package:flutter/material.dart';
import 'package:pizza_app/widgets/pizza.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({Key? key, required this.pizza}) : super(key: key);

  final Pizza pizza;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          pizza.name,
          style: const TextStyle(fontSize: 25, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const SizedBox(
          height: 100,
        ),
        Hero(
          tag: pizza.name,
          child: CircleAvatar(
            backgroundImage: AssetImage(pizza.imagePath),
            radius: 200,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          pizza.name,
          style: const TextStyle(fontSize: 30),
        ),
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            pizza.description,
            style: const TextStyle(fontSize: 20),
          ),
        )
      ]),
    );
  }
}
