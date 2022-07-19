import 'package:flutter/material.dart';
import 'package:pizza_app/screens/about_us.dart';
import 'package:pizza_app/screens/menu.dart';

class MyButtonBar extends StatelessWidget {
  const MyButtonBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.amber,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {
                  if (ModalRoute.of(context)?.settings.name !=
                      MenuScreen.routeName) {
                    Navigator.pushNamedAndRemoveUntil(context,
                        MenuScreen.routeName, ModalRoute.withName('/'));
                  }
                },
                icon: const Icon(
                  Icons.house,
                  color: Colors.white,
                )),
            TextButton(
                onPressed: () {
                  if (ModalRoute.of(context)?.settings.name !=
                      AboutUsScreen.routeName) {
                    Navigator.pushNamedAndRemoveUntil(
                        context,
                        AboutUsScreen.routeName,
                        ModalRoute.withName(MenuScreen.routeName));
                  }
                },
                child: const Text('About us',
                    style: TextStyle(color: Colors.white, fontSize: 20)))
          ],
        ));
  }
}
