import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {

  int strength = 1;
  int sugars = 1;

  void increaseStrength(){
    setState(() {
      strength = strength < 5 ? strength + 1: 1;
    });
  }

  void increaseSugars(){
    setState(() {
      sugars = sugars < 5 ? sugars + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('Strength: '),
            Text('$strength'),

            for (int i=0; i<strength; i++)
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
            Text('$sugars'),

            if (sugars == 0)
              const Text('No sugars...'),

            for (int i=0; i<sugars; i++)
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
