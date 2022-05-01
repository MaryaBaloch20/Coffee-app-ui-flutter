import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  final String coffeetype;
  final bool isSelected;
  CoffeeType({
    required this.coffeetype,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Text(
        coffeetype,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: isSelected ? Colors.orange : Colors.white,
        ),
      ),
    );
  }
}
