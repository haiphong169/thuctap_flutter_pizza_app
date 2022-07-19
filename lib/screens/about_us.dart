import 'package:flutter/material.dart';
import 'package:pizza_app/widgets/buttonbar.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  static const routeName = '/about_us';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'About Us',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(
              height: 50,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/chefs.jpg'),
              radius: 150,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'WE LOVEEE PIZZAS!!',
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'We love pizzas and want to share that love with you! Here at the Pizza App, we only make the best pizzas with the most amount of love and passion.',
                style: TextStyle(fontSize: 17),
              ),
            )),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Bon appetit!',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 80,
            ),
            MyButtonBar()
          ]),
    );
  }
}
