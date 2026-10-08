import 'package:flutter/material.dart';

class CoffeePrefs extends StatelessWidget {
  const CoffeePrefs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('Strength: '),
            const Text('3'),
            Image.asset('assets/img/coffee-beans.jpg',
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
            const SizedBox(width: 50),
          ]
        ),
        Row(
          children: [
            const Text('Sugars: '),
            const Text('3'),
            Image.asset('assets/img/sugar-cube.jpg',
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
            const SizedBox(width: 50),
          ]
        ),
      ],
    );
  }
}
