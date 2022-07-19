import 'package:flutter/material.dart';
import 'package:pizza_app/screens/item.dart';

class Pizza extends StatelessWidget {
  const Pizza(
      {Key? key,
      required this.name,
      required this.price,
      required this.imagePath,
      required this.description})
      : super(key: key);

  final String name;
  final double price;
  final String imagePath;
  final String description;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: ((context) => ItemScreen(
                      pizza: Pizza(
                    description: description,
                    name: name,
                    price: price,
                    imagePath: imagePath,
                  ))))),
      child: Card(
        child: ListTile(
          leading: Hero(
            tag: name,
            child: CircleAvatar(
              backgroundImage: AssetImage(imagePath),
              radius: 30,
            ),
          ),
          title: Text(
            name,
            style: const TextStyle(fontSize: 22),
          ),
          subtitle: Text(
            description,
            style: const TextStyle(fontSize: 16),
          ),
          trailing: Text(
            '\$$price',
            style: TextStyle(color: Colors.orange.shade900, fontSize: 17),
          ),
        ),
      ),
    );
  }
}
