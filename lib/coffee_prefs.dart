import 'package:flutter/material.dart';

class CoffeePrefs extends StatelessWidget {
  const CoffeePrefs({super.key});

  void increaseStrength(){
    print('inc strength by 1');
  }

  void increaseSugars(){
    print('inc sugars by 1');
  }

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
            const Expanded(child: SizedBox(width: 100)),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
                onPressed: increaseStrength,
                child: Text('+')
            )
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
            const Expanded(child: SizedBox(width: 100)),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.brown
              ),
                onPressed: increaseSugars,
                child: Text('+')
            )
          ]
        ),
      ],
    );
  }
}
